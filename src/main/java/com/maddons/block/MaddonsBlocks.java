package com.maddons.block;

import java.util.function.Function;

import com.maddons.client.particle.MaddonsParticleTypes;
import com.maddons.fluid.MaddonsFluids;

import net.minecraft.core.Registry;
import net.minecraft.references.BlockItemId;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.block.LiquidBlock;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.BlockItem;
import net.minecraft.resources.ResourceKey;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraft.world.level.material.MapColor;
import net.minecraft.world.level.material.PushReaction;
import net.minecraft.world.level.block.SoundType;
import net.minecraft.world.level.block.UntintedParticleLeavesBlock;

public class MaddonsBlocks {
	private static Block register(BlockItemId id, Function<BlockBehaviour.Properties, Block> blockFactory, BlockBehaviour.Properties properties)
	{
		Block block = register(id.block(), blockFactory, properties);
		BlockItem blockItem = new BlockItem(block, new Item.Properties().useBlockDescriptionPrefix().setId(id.item()));
		Registry.register(BuiltInRegistries.ITEM, id.item(), blockItem);
		return block;
	}
	
	private static Block register(ResourceKey<Block> id, Function<BlockBehaviour.Properties, Block> blockFactory, BlockBehaviour.Properties properties)
	{
		Block block = blockFactory.apply(properties.setId(id));
		return Registry.register(BuiltInRegistries.BLOCK, id, block);
	}

	public static final Block CRYSTALISED_SPARKSTONE = register(
		MaddonsBlockItemIds.CRYSTALISED_SPARKSTONE,
		Block::new,
		BlockBehaviour.Properties.of()
		.strength(1.5F)
		.sound(SoundType.AMETHYST)
		.requiresCorrectToolForDrops()
	);
	
	public static final Block GOLDEN_OAK_LEAVES = register(
		MaddonsBlockItemIds.GOLDEN_OAK_LEAVES,
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
			.isRedstoneConductor(Blocks::never)
	);

	public static final Block SPARKSTONE = register(
		MaddonsBlockIds.SPARKSTONE,
		(props) -> new LiquidBlock(MaddonsFluids.SPARKSTONE, props),
		BlockBehaviour.Properties.ofFullCopy(Blocks.LAVA)
	);
	
	public static void initialise() {
	}
}