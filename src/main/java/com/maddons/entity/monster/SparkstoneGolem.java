package com.maddons.entity.monster;

import net.minecraft.world.level.Level;

import org.jetbrains.annotations.Nullable;

import com.maddons.entity.MaddonsEntityTypes;

import net.minecraft.server.level.ServerLevel;
import net.minecraft.world.entity.AgeableMob;
import net.minecraft.world.entity.EntitySpawnReason;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.monster.Enemy;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.ai.attributes.AttributeSupplier;
import net.minecraft.world.entity.ai.attributes.Attributes;

public class SparkstoneGolem extends AgeableMob implements Enemy
{
	public SparkstoneGolem(EntityType<? extends SparkstoneGolem> entityType, Level level) {
		super(entityType, level);
	}

	public static AttributeSupplier.Builder createAttributes() {
		return Monster.createMonsterAttributes()
		.add(Attributes.MAX_HEALTH, 16.0)
		.add(Attributes.MOVEMENT_SPEED, 0.3F);
	}

	@Nullable 
	public SparkstoneGolem getBreedOffspring(ServerLevel level, AgeableMob mob)
	{
		SparkstoneGolem offspring = MaddonsEntityTypes.SPARKSTONE_GOLEM.create(level, EntitySpawnReason.JOCKEY);
		if (offspring != null) {
			offspring.setBaby(true);
		}
		return offspring;
	}
}