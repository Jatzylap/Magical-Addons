package com.maddons.data.generators;

import java.util.concurrent.CompletableFuture;

import com.maddons.block.MaddonsBlocks;
import com.maddons.item.MaddonsItems;

import net.fabricmc.fabric.api.datagen.v1.FabricPackOutput;
import net.fabricmc.fabric.api.datagen.v1.provider.FabricLanguageProvider;
import net.minecraft.core.HolderLookup;

public class MaddonsENUSLangData extends FabricLanguageProvider
{
    public MaddonsENUSLangData(FabricPackOutput output, CompletableFuture<HolderLookup.Provider> registriesFuture) {
		super(output, "en_us", registriesFuture);
	}

    @Override 
    public void generateTranslations(HolderLookup.Provider lookUp, TranslationBuilder builder)
    {
        builder.add(MaddonsBlocks.CRYSTALISED_SPARKSTONE, "Crystalised Sparkstone");
        builder.add(MaddonsBlocks.SPARKSTONE, "Sparkstone");
        builder.add(MaddonsBlocks.GOLDEN_OAK_LEAVES, "Golden Oak Leaves");
        builder.add(MaddonsItems.SPARKSTONE_BUCKET, "Sparkstone Bucket");
        builder.add(MaddonsItems.CREATIVE_TAB_KEY, "Magical Addons");
        builder.add("effect.maddons.recharging", "Recharging");
    }
}
