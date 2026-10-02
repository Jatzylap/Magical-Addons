package com.maddons.block;

import java.util.function.Function;
import com.maddons.Maddons;
import com.maddons.client.particle.MaddonsParticleTypes;

import net.minecraft.world.item.CreativeModeTabs;
import net.minecraft.core.Registry;
import net.minecraft.core.registries.Registries;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.BlockItem;
import net.minecraft.resources.ResourceKey;
import net.minecraft.resources.Identifier;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraft.world.level.material.MapColor;
import net.minecraft.world.level.material.PushReaction;
import net.minecraft.world.level.block.SoundType;
import net.minecraft.world.level.block.UntintedParticleLeavesBlock;
import net.fabricmc.fabric.api.creativetab.v1.CreativeModeTabEvents;

public class MaddonsBlocks {
	private static Block register(String name, Function<BlockBehaviour.Properties, Block> blockFactory, BlockBehaviour.Properties properties, boolean shouldRegisterItem) {
		
		ResourceKey<Block> blockKey = keyOfBlock(name);
		Block block = blockFactory.apply(properties.setId(blockKey));

		if (shouldRegisterItem) {
			ResourceKey<Item> itemKey = keyOfItem(name);

			BlockItem blockItem = new BlockItem(block, new Item.Properties().setId(itemKey).useBlockDescriptionPrefix());
			Registry.register(BuiltInRegistries.ITEM, itemKey, blockItem);
		}

		return Registry.register(BuiltInRegistries.BLOCK, blockKey, block);
	}

	private static ResourceKey<Block> keyOfBlock(String name) {
		return ResourceKey.create(Registries.BLOCK, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, name));
	}

	private static ResourceKey<Item> keyOfItem(String name) {
		return ResourceKey.create(Registries.ITEM, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, name));
	}
	public static void initialise()
	{
		CreativeModeTabEvents.modifyOutputEvent(CreativeModeTabs.BUILDING_BLOCKS).register((creativeTab) -> {
			creativeTab.accept(MaddonsBlocks.SPARKSTONE_BLOCK);
		});
		CreativeModeTabEvents.modifyOutputEvent(CreativeModeTabs.NATURAL_BLOCKS).register((creativeTab) -> {
			creativeTab.accept(MaddonsBlocks.GOLDEN_OAK_LEAVES);
		});
	}

	public static final Block SPARKSTONE_BLOCK = register(
		"sparkstone_block",
		Block::new,
		BlockBehaviour.Properties.of()
		.strength(1.5F)
		.sound(SoundType.AMETHYST)
		.requiresCorrectToolForDrops(),
		true
	);
	
	public static final Block GOLDEN_OAK_LEAVES = register(
		"golden_oak_leaves",
		p -> new UntintedParticleLeavesBlock(0.1F, MaddonsParticleTypes.GOLDEN_OAK_LEAVES, p),
		BlockBehaviour.Properties.of()
			.mapColor(MapColor.GOLD)
			.strength(0.2F)
			.randomTicks()
			.sound(SoundType.GRASS)
			.noOcclusion()
			.isSuffocating(Blocks::never)
			.isViewBlocking(Blocks::never)
			.ignitedByLava()
			.pushReaction(PushReaction.DESTROY)
			.isRedstoneConductor(Blocks::never),
		true
	);
}