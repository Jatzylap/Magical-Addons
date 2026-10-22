package com.maddons.fluid;

import net.minecraft.world.level.material.FlowingFluid;
import net.minecraft.world.level.material.Fluid;
import net.minecraft.core.Registry;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.ResourceKey;

public class MaddonsFluids
{
    public static final FlowingFluid FLOWING_SPARKSTONE = register(MaddonsFluidIds.FLOWING_SPARKSTONE, new SparkstoneFluid.Flowing());
    public static final FlowingFluid SPARKSTONE = register(MaddonsFluidIds.SPARKSTONE, new SparkstoneFluid.Source());

    private static FlowingFluid register(ResourceKey<Fluid> key, FlowingFluid fluid) {
		return Registry.register(BuiltInRegistries.FLUID, key, fluid);
	}

    public static void initialise() {}

}
