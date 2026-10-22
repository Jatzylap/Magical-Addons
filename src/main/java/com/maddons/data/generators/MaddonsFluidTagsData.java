package com.maddons.data.generators;

import java.util.concurrent.CompletableFuture;

import com.maddons.Maddons;
import com.maddons.fluid.MaddonsFluidIds;

import net.fabricmc.fabric.api.datagen.v1.FabricPackOutput;
import net.fabricmc.fabric.api.datagen.v1.provider.FabricTagsProvider;
import net.minecraft.core.HolderLookup;
import net.minecraft.core.registries.Registries;
import net.minecraft.resources.Identifier;
import net.minecraft.tags.TagKey;
import net.minecraft.world.level.material.Fluid;

public class MaddonsFluidTagsData extends FabricTagsProvider.FluidTagsProvider
{
    public static final TagKey<Fluid> SPARKSTONE = TagKey.create(Registries.FLUID, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "sparkstone"));

    public MaddonsFluidTagsData(FabricPackOutput output, CompletableFuture<HolderLookup.Provider> registriesFuture) {
		super(output, registriesFuture);
	}

	@Override
	protected void addTags(HolderLookup.Provider wrapperLookup)
    {
        builder(SPARKSTONE)
            .add(MaddonsFluidIds.FLOWING_SPARKSTONE)
            .add(MaddonsFluidIds.SPARKSTONE)
            .setReplace(false);
	}
}