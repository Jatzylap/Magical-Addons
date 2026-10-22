package com.maddons.fluid;

import com.maddons.Maddons;

import net.minecraft.core.registries.Registries;
import net.minecraft.resources.Identifier;
import net.minecraft.resources.ResourceKey;
import net.minecraft.world.level.material.Fluid;

public class MaddonsFluidIds {
    public static final ResourceKey<Fluid> FLOWING_SPARKSTONE = create("flowing_sparkstone");
	public static final ResourceKey<Fluid> SPARKSTONE = create("sparkstone");

	public static ResourceKey<Fluid> create(String name) {
		return ResourceKey.create(Registries.FLUID, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, name));
	}
}
