package com.maddons.entity.monster;

import java.util.List;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.mojang.datafixers.util.Pair;

import com.maddons.entity.ai.behaviour.sculk_spider.Roar;
import com.maddons.entity.ai.behaviour.sculk_spider.SetRoarTarget;
import com.maddons.entity.ai.behaviour.sculk_spider.Sniffing;

import net.minecraft.core.BlockPos;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.util.Mth;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.ai.ActivityData;
import net.minecraft.world.entity.ai.Brain;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.ai.behavior.GoToTargetLocation;
import net.minecraft.world.entity.ai.behavior.LookAtTargetSink;
import net.minecraft.world.entity.ai.behavior.MeleeAttack;
import net.minecraft.world.entity.ai.behavior.MoveToTargetSink;
import net.minecraft.world.entity.ai.behavior.RandomStroll;
import net.minecraft.world.entity.ai.behavior.RunOne;
import net.minecraft.world.entity.ai.behavior.SetEntityLookTarget;
import net.minecraft.world.entity.ai.behavior.SetWalkTargetFromAttackTargetIfTargetOutOfReach;
import net.minecraft.world.entity.ai.behavior.StopAttackingIfTargetInvalid;
import net.minecraft.world.entity.ai.behavior.Swim;
import net.minecraft.world.entity.ai.behavior.BlockPosTracker;
import net.minecraft.world.entity.ai.behavior.DoNothing;
import net.minecraft.world.entity.ai.memory.MemoryModuleType;
import net.minecraft.world.entity.ai.memory.MemoryStatus;
import net.minecraft.world.entity.ai.behavior.warden.TryToSniff;
import net.minecraft.world.entity.schedule.Activity;

public class SculkSpiderAi
{
	public static final int ROAR_DURATION = 0;

    protected static List<ActivityData<SculkSpider>> getActivities(final SculkSpider body)
    {
		return List.of(
			initCoreActivity(),
			initIdleActivity(),
			initRoarActivity(),
			initFightActivity(body),
			initInvestigateActivity(),
			initSniffingActivity()
		);
	}

    private static ActivityData<SculkSpider> initCoreActivity()
    {
		return ActivityData.create(
			Activity.CORE, 0, ImmutableList.of(new Swim<>(0.63F), new LookAtTargetSink(45, 90), new MoveToTargetSink())
		);
	}

	private static ActivityData<SculkSpider> initIdleActivity() {
		return ActivityData.create(
			Activity.IDLE,
			10,
			ImmutableList.of(
				SetRoarTarget.create(SculkSpider::getEntityAngryAt),
				TryToSniff.create(),
				new RunOne<>(
					ImmutableMap.of(MemoryModuleType.IS_SNIFFING, MemoryStatus.VALUE_ABSENT),
					ImmutableList.of(Pair.of(RandomStroll.stroll(0.63F), 2), Pair.of(new DoNothing(30, 60), 1))
				)
			)
		);
	}

	private static ActivityData<SculkSpider> initSniffingActivity() {
		return ActivityData.create(
			Activity.SNIFF, 5, ImmutableList.of(SetRoarTarget.create(SculkSpider::getEntityAngryAt), new Sniffing<>(Mth.ceil(43.2F))), MemoryModuleType.IS_SNIFFING
		);
	}

	private static ActivityData<SculkSpider> initRoarActivity() {
		return ActivityData.create(Activity.ROAR, 10, ImmutableList.of(new Roar()), MemoryModuleType.ROAR_TARGET);
	}

    private static ActivityData<SculkSpider> initInvestigateActivity()
    {
		return ActivityData.create(
			Activity.INVESTIGATE,
			5,
			ImmutableList.of(GoToTargetLocation.create(MemoryModuleType.DISTURBANCE_LOCATION, 2, 1.0F)),
			MemoryModuleType.DISTURBANCE_LOCATION
		);
	}

    private static ActivityData<SculkSpider> initFightActivity(final SculkSpider body)
    {
		return ActivityData.create(
			Activity.FIGHT,
			10,
			ImmutableList.of(
				StopAttackingIfTargetInvalid.<SculkSpider>create(
					(level, target) -> !body.getAngerLevel().isAngry() || !body.canTargetEntity(target), SculkSpiderAi::onTargetInvalid, false
				),
				SetEntityLookTarget.create(entity -> isTarget(body, entity), (float)body.getAttributeValue(Attributes.FOLLOW_RANGE)),
				SetWalkTargetFromAttackTargetIfTargetOutOfReach.create(1.1F),
				MeleeAttack.create(18)
			),
			MemoryModuleType.ATTACK_TARGET
		);
	}

    private static void onTargetInvalid(final ServerLevel level, final SculkSpider body, final LivingEntity attackTarget)
    {
		if (!body.canTargetEntity(attackTarget)) {
			body.clearAnger(attackTarget);
		}
	}

    private static boolean isTarget(final SculkSpider body, final LivingEntity living) {
		return body.getBrain().getMemory(MemoryModuleType.ATTACK_TARGET).filter(e -> e == living).isPresent();
	}

    public static void setDisturbanceLocation(final SculkSpider body, final BlockPos position)
    {
		if (body.level().getWorldBorder().isWithinBounds(position)
			&& !body.getEntityAngryAt().isPresent()
			&& !body.getBrain().getMemory(MemoryModuleType.ATTACK_TARGET).isPresent()) {
			body.getBrain().setMemoryWithExpiry(MemoryModuleType.LOOK_TARGET, new BlockPosTracker(position), 100L);
			body.getBrain().setMemoryWithExpiry(MemoryModuleType.DISTURBANCE_LOCATION, position, 100L);
			body.getBrain().eraseMemory(MemoryModuleType.WALK_TARGET);
		}
	}

    public static void updateActivity(Brain<? extends LivingEntity> brain) {
		brain.setActiveActivityToFirstValid(
			ImmutableList.of(Activity.ROAR, Activity.FIGHT, Activity.INVESTIGATE, Activity.SNIFF, Activity.IDLE)
		);
    }
}
