package com.maddons.data.resources;

import com.maddons.Maddons;
import com.maddons.block.MaddonsBlocks;

import net.minecraft.core.registries.Registries;
import net.minecraft.data.worldgen.BootstrapContext;
import net.minecraft.resources.Identifier;
import net.minecraft.resources.ResourceKey;
import net.minecraft.util.valueproviders.ConstantInt;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.levelgen.feature.ConfiguredFeature;
import net.minecraft.world.level.levelgen.feature.Feature;
import net.minecraft.world.level.levelgen.feature.configurations.TreeConfiguration;
import net.minecraft.world.level.levelgen.feature.featuresize.TwoLayersFeatureSize;
import net.minecraft.world.level.levelgen.feature.foliageplacers.BlobFoliagePlacer;
import net.minecraft.world.level.levelgen.feature.stateproviders.BlockStateProvider;
import net.minecraft.world.level.levelgen.feature.trunkplacers.StraightTrunkPlacer;

public class MaddonsConfiguredFeatures
{
    private static ResourceKey<ConfiguredFeature<?, ?>> createKey(String name) {
        return ResourceKey.create(Registries.CONFIGURED_FEATURE, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, name));
    }

    public static final ResourceKey<ConfiguredFeature<?, ?>> FLOATING_ISLAND = createKey("floating_island");
    public static final ResourceKey<ConfiguredFeature<?, ?>> GOLDEN_OAK_TREE = createKey("golden_oak_tree");

	public static void configure(BootstrapContext<ConfiguredFeature<?, ?>> context)
    {
        TreeConfiguration GOLDEN_OAK_TREE_CONFIG = new TreeConfiguration.TreeConfigurationBuilder(
            BlockStateProvider.simple(Blocks.OAK_LOG),
            new StraightTrunkPlacer(4, 2, 0),
            BlockStateProvider.simple(MaddonsBlocks.GOLDEN_OAK_LEAVES),
            new BlobFoliagePlacer(ConstantInt.of(2), ConstantInt.of(0), 3),
            new TwoLayersFeatureSize(0, 0, 0),
            BlockStateProvider.simple(Blocks.DIRT)
        ).build();

        context.register(GOLDEN_OAK_TREE, new ConfiguredFeature<>(Feature.TREE, GOLDEN_OAK_TREE_CONFIG));
	}
}
