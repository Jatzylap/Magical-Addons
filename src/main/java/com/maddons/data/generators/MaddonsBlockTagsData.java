package com.maddons.data.generators;

import java.util.concurrent.CompletableFuture;

import com.maddons.Maddons;

import net.fabricmc.fabric.api.datagen.v1.FabricPackOutput;
import net.fabricmc.fabric.api.datagen.v1.provider.FabricTagsProvider;
import net.minecraft.core.HolderLookup;
import net.minecraft.core.registries.Registries;
import net.minecraft.resources.Identifier;
import net.minecraft.tags.BlockTags;
import net.minecraft.tags.TagKey;
import net.minecraft.world.level.block.Block;

public class MaddonsBlockTagsData extends FabricTagsProvider.BlockTagsProvider
{
    public static final TagKey<Block> NON_CLIMBABLE = TagKey.create(Registries.BLOCK, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "non_climbable"));

    public MaddonsBlockTagsData(FabricPackOutput output, CompletableFuture<HolderLookup.Provider> registriesFuture) {
		super(output, registriesFuture);
	}

	@Override
	protected void addTags(HolderLookup.Provider wrapperLookup)
    {
        builder(NON_CLIMBABLE)
            .forceAddTag(BlockTags.ICE)
            .setReplace(false);
	}
}