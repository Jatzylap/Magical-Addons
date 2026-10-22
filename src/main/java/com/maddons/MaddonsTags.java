package com.maddons;

import net.minecraft.core.registries.Registries;
import net.minecraft.resources.Identifier;
import net.minecraft.tags.TagKey;
import net.minecraft.world.level.biome.Biome;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.levelgen.structure.Structure;
import net.minecraft.world.level.material.Fluid;

public class MaddonsTags
{
    public static class Blocks
    {
        public static final TagKey<Block> NON_CLIMBABLE = TagKey.create(Registries.BLOCK, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "non_climbable"));
    }
    public static class Fluids
    {
        public static final TagKey<Fluid> FLOWING_SPARKSTONE = TagKey.create(Registries.FLUID, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "flowing_sparkstone"));
        public static final TagKey<Fluid> SPARKSTONE = TagKey.create(Registries.FLUID, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "sparkstone"));
    }
    public static class Biomes
    {
        public static final TagKey<Biome> IS_SKY = TagKey.create(Registries.BIOME, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "is_sky"));
    }
    public static class Structures
    {
        public static final TagKey<Structure> WITCHDOCTOR_HUTS = TagKey.create(Registries.STRUCTURE, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "witchdoctor_huts"));
    }
}
