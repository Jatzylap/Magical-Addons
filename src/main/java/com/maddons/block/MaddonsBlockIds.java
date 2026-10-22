package com.maddons.block;

import com.maddons.Maddons;

import net.minecraft.core.registries.Registries;
import net.minecraft.resources.Identifier;
import net.minecraft.resources.ResourceKey;
import net.minecraft.world.level.block.Block;

public class MaddonsBlockIds
{
    public static final ResourceKey<Block> SPARKSTONE = create("sparkstone");

	private static ResourceKey<Block> create(final String name) {
		return ResourceKey.create(Registries.BLOCK, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, name));
	}
}
