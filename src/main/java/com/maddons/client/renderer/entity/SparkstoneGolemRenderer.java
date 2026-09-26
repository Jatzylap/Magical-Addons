package com.maddons.client.renderer.entity;

import com.maddons.Maddons;
import com.maddons.client.model.SparkstoneGolemModel;
import com.maddons.client.model.geom.ModelLayers;
import com.maddons.client.renderer.entity.state.SparkstoneGolemRenderState;
import com.maddons.entity.monster.SparkstoneGolem;

import net.minecraft.client.renderer.entity.MobRenderer;
import net.minecraft.resources.Identifier;
import net.minecraft.client.renderer.entity.EntityRendererProvider;


public class SparkstoneGolemRenderer extends MobRenderer<SparkstoneGolem, SparkstoneGolemRenderState, SparkstoneGolemModel> {

	public SparkstoneGolemRenderer(EntityRendererProvider.Context context) {
		super(context, new SparkstoneGolemModel(context.bakeLayer(ModelLayers.SPARKSTONE_GOLEM)), 0.375f); // 0.375 shadow radius
	}

	@Override
	public SparkstoneGolemRenderState createRenderState() {
		return new SparkstoneGolemRenderState();
	}

	@Override
	public Identifier getTextureLocation(SparkstoneGolemRenderState state) {
		return Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "textures/entity/sparkstone_golem.png");
	}
}