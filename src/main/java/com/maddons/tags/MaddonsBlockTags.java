package com.maddons.tags;

import com.maddons.Maddons;

import net.minecraft.core.registries.Registries;
import net.minecraft.resources.Identifier;
import net.minecraft.tags.TagKey;
import net.minecraft.world.level.block.Block;

public class MaddonsBlockTags {
   public static final TagKey<Block> NON_CLIMBABLE = TagKey.create(Registries.BLOCK, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "non_climbable"));
}
