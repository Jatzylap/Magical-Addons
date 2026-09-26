package com.maddons.entity;

import com.maddons.Maddons;
import com.maddons.entity.monster.SculkSpider;
import com.maddons.entity.monster.SparkstoneGolem;

import net.minecraft.resources.Identifier;
import net.minecraft.resources.ResourceKey;
import net.minecraft.core.Registry;
import net.minecraft.core.registries.Registries;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.MobCategory;

import net.fabricmc.fabric.api.object.builder.v1.entity.FabricDefaultAttributeRegistry;

public class MaddonsEntityTypes
{
	public static final EntityType<SparkstoneGolem> SPARKSTONE_GOLEM = register(
			"sparkstone_golem",
			EntityType.Builder.<SparkstoneGolem>of(SparkstoneGolem::new, MobCategory.MONSTER)
					.sized(0.75f, 1.75f)
	);
		public static final EntityType<SculkSpider> SCULK_SPIDER = register(
			"sculk_spider",
			EntityType.Builder.<SculkSpider>of(SculkSpider::new, MobCategory.MONSTER)
					.sized(1.4F, 0.9F) // very specific to its custom ai pathfinding and collision
	);

	private static <T extends Entity> EntityType<T> register(String name, EntityType.Builder<T> builder)
	{
		ResourceKey<EntityType<?>> key = ResourceKey.create(Registries.ENTITY_TYPE, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, name));
		return Registry.register(BuiltInRegistries.ENTITY_TYPE, key, builder.build(key));
	}

	public static void registerAttributes()
	{
		FabricDefaultAttributeRegistry.register(SPARKSTONE_GOLEM, SparkstoneGolem.createAttributes());
		FabricDefaultAttributeRegistry.register(SCULK_SPIDER, SculkSpider.createAttributes());
	}

	public static void initialise()
	{
		Maddons.LOGGER.info("Initialisation!");
	}
}