package com.maddons.entity.ai.behaviour.sculk_spider;

import com.google.common.collect.ImmutableMap;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.util.Unit;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.Pose;
import net.minecraft.world.entity.ai.Brain;
import net.minecraft.world.entity.ai.behavior.Behavior;
import net.minecraft.world.entity.ai.behavior.BehaviorUtils;
import net.minecraft.world.entity.ai.memory.MemoryModuleType;
import net.minecraft.world.entity.ai.memory.MemoryStatus;
import com.maddons.entity.monster.SculkSpider;
import com.maddons.entity.monster.SculkSpiderAi;

public class Roar extends Behavior<SculkSpider> {
	private static final int TICKS_BEFORE_PLAYING_ROAR_SOUND = 25;
	private static final int ROAR_ANGER_INCREASE = 20;

	public Roar() {
		super(
			ImmutableMap.of(
				MemoryModuleType.ROAR_TARGET,
				MemoryStatus.VALUE_PRESENT,
				MemoryModuleType.ATTACK_TARGET,
				MemoryStatus.VALUE_ABSENT,
				MemoryModuleType.ROAR_SOUND_COOLDOWN,
				MemoryStatus.REGISTERED,
				MemoryModuleType.ROAR_SOUND_DELAY,
				MemoryStatus.REGISTERED
			),
			SculkSpiderAi.ROAR_DURATION
		);
	}

	protected void start(final ServerLevel level, final SculkSpider body, final long timestamp) {
		Brain<SculkSpider> brain = body.getBrain();
		brain.setMemoryWithExpiry(MemoryModuleType.ROAR_SOUND_DELAY, Unit.INSTANCE, 25L);
		brain.eraseMemory(MemoryModuleType.WALK_TARGET);
		LivingEntity target = body.getBrain().getMemory(MemoryModuleType.ROAR_TARGET).get();
		BehaviorUtils.lookAtEntity(body, target);
		body.setPose(Pose.ROARING);
		body.increaseAngerAt(target, 20);
	}

	protected boolean canStillUse(final ServerLevel level, final SculkSpider body, final long timestamp) {
		return true;
	}

	protected void tick(final ServerLevel level, final SculkSpider body, final long timestamp) {
		if (!body.getBrain().hasMemoryValue(MemoryModuleType.ROAR_SOUND_DELAY) && !body.getBrain().hasMemoryValue(MemoryModuleType.ROAR_SOUND_COOLDOWN)) {
			body.getBrain().setMemoryWithExpiry(MemoryModuleType.ROAR_SOUND_COOLDOWN, Unit.INSTANCE, SculkSpiderAi.ROAR_DURATION - 25);
		}
	}

	protected void stop(final ServerLevel level, final SculkSpider body, final long timestamp) {
		if (body.hasPose(Pose.ROARING)) {
			body.setPose(Pose.STANDING);
		}

		body.getBrain().getMemory(MemoryModuleType.ROAR_TARGET).ifPresent(body::setAttackTarget);
		body.getBrain().eraseMemory(MemoryModuleType.ROAR_TARGET);
	}
}
