package com.maddons.entity.ai.behaviour.sculk_spider;

import com.google.common.collect.ImmutableMap;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.world.entity.Pose;
import net.minecraft.world.entity.ai.behavior.Behavior;
import net.minecraft.world.entity.ai.memory.MemoryModuleType;
import net.minecraft.world.entity.ai.memory.MemoryStatus;
import com.maddons.entity.monster.SculkSpider;
import com.maddons.entity.monster.SculkSpiderAi;

public class Sniffing<E extends SculkSpider> extends Behavior<E> {
	public Sniffing(final int ticks) {
		super(
			ImmutableMap.of(
				MemoryModuleType.IS_SNIFFING,
				MemoryStatus.VALUE_PRESENT,
				MemoryModuleType.ATTACK_TARGET,
				MemoryStatus.VALUE_ABSENT,
				MemoryModuleType.WALK_TARGET,
				MemoryStatus.VALUE_ABSENT,
				MemoryModuleType.LOOK_TARGET,
				MemoryStatus.REGISTERED,
				MemoryModuleType.NEAREST_ATTACKABLE,
				MemoryStatus.REGISTERED,
				MemoryModuleType.DISTURBANCE_LOCATION,
				MemoryStatus.REGISTERED,
				MemoryModuleType.SNIFF_COOLDOWN,
				MemoryStatus.REGISTERED
			),
			ticks
		);
	}

	protected boolean canStillUse(final ServerLevel level, final E body, final long timestamp) {
		return true;
	}

	protected void start(final ServerLevel level, final E body, final long timestamp) {
		// body.playSound(SoundEvents.WARDEN_SNIFF, 5.0F, 1.0F);
	}

	protected void stop(final ServerLevel level, final E body, final long timestamp) {
		// if (body.hasPose(Pose.SNIFFING)) {
		// 	body.setPose(Pose.STANDING);
		// }

		body.getBrain().eraseMemory(MemoryModuleType.IS_SNIFFING);
		body.getBrain().getMemory(MemoryModuleType.NEAREST_ATTACKABLE).filter(body::canTargetEntity).ifPresent(entity -> {
			if (body.closerThan(entity, 6.0, 20.0)) {
				body.increaseAngerAt(entity);
			}

			if (!body.getBrain().hasMemoryValue(MemoryModuleType.DISTURBANCE_LOCATION)) {
				SculkSpiderAi.setDisturbanceLocation(body, entity.blockPosition());
			}
		});
	}
}
