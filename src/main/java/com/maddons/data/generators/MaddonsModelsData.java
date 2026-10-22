package com.maddons.data.generators;

import com.maddons.block.MaddonsBlocks;
import com.maddons.item.MaddonsItems;

import net.fabricmc.fabric.api.client.datagen.v1.provider.FabricModelProvider;
import net.fabricmc.fabric.api.datagen.v1.FabricPackOutput;
import net.minecraft.client.data.models.BlockModelGenerators;
import net.minecraft.client.data.models.ItemModelGenerators;
import net.minecraft.client.data.models.model.ModelTemplates;

public class MaddonsModelsData extends FabricModelProvider
{
    public MaddonsModelsData(FabricPackOutput output) {
		super(output);
	}

	@Override
	public void generateBlockStateModels(BlockModelGenerators blockStateModelGenerator)
	{
		blockStateModelGenerator.createTrivialCube(MaddonsBlocks.CRYSTALISED_SPARKSTONE);
		blockStateModelGenerator.createTrivialCube(MaddonsBlocks.GOLDEN_OAK_LEAVES);
	}

	@Override
	public void generateItemModels(ItemModelGenerators itemModelGenerator) {
		itemModelGenerator.generateFlatItem(MaddonsItems.SPARKSTONE_BUCKET, ModelTemplates.FLAT_ITEM);
		itemModelGenerator.generateFlatItem(MaddonsItems.SPARKSTONE_ORB, ModelTemplates.FLAT_ITEM);
		// itemModelGenerator.generateLayeredItem(
		// 	MaddonsItems.ANCIENT_STAFF,
		// 	TextureMapping.getItemTexture(MaddonsItems.ANCIENT_STAFF),
		// 	TextureMapping.getItemTexture(MaddonsItems.ANCIENT_STAFF, "_overlay")
		// );
	}
}
