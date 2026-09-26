package com.maddons.client.model.geom;

import com.maddons.Maddons;
import com.maddons.client.model.SculkSpiderModel;
import com.maddons.client.model.SparkstoneGolemModel;
import net.minecraft.client.model.geom.ModelLayerLocation;
import net.minecraft.resources.Identifier;
import net.fabricmc.fabric.api.client.rendering.v1.ModelLayerRegistry;

public class ModelLayers
{
	public static final ModelLayerLocation SPARKSTONE_GOLEM = createMain("sparkstone_golem");
	public static final ModelLayerLocation SCULK_SPIDER = createMain("sculk_spider");
	public static final ModelLayerLocation SCULK_SPIDER_BIOLUMINESCENT = createMain("sculk_spider_bioluminescent_layer");
	
	private static ModelLayerLocation createMain(String name)
	{
		return new ModelLayerLocation(Identifier.fromNamespaceAndPath(Maddons.MOD_ID, name), "main");
	}

	public static void registerModelLayers()
	{
		ModelLayerRegistry.registerModelLayer(ModelLayers.SPARKSTONE_GOLEM, SparkstoneGolemModel::getTexturedModelData);
		ModelLayerRegistry.registerModelLayer(ModelLayers.SCULK_SPIDER, SculkSpiderModel::createBodyLayer);
		ModelLayerRegistry.registerModelLayer(ModelLayers.SCULK_SPIDER_BIOLUMINESCENT, SculkSpiderModel::createBioluminescentLayer);
	}
}