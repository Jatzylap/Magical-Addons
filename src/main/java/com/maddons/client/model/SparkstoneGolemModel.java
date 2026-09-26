package com.maddons.client.model;

import com.maddons.client.renderer.entity.state.SparkstoneGolemRenderState;
import com.maddons.client.model.geom.PartNames;
import net.minecraft.client.model.EntityModel;
import net.minecraft.client.model.geom.ModelPart;
import net.minecraft.client.model.geom.PartPose;
import net.minecraft.client.model.geom.builders.CubeListBuilder;
import net.minecraft.client.model.geom.builders.LayerDefinition;
import net.minecraft.client.model.geom.builders.MeshDefinition;
import net.minecraft.client.model.geom.builders.PartDefinition;

public class SparkstoneGolemModel extends EntityModel<SparkstoneGolemRenderState> {
	public SparkstoneGolemModel(ModelPart root) {
		super(root);
    }

	public static LayerDefinition getTexturedModelData()
	{
		MeshDefinition modelData = new MeshDefinition();
		PartDefinition root = modelData.getRoot();
		root.addOrReplaceChild(
			PartNames.ROOT,
			CubeListBuilder.create()
				.texOffs(0, 0)
				.addBox(-6F, 12F, -6F, 12F, 12F, 12F),
			PartPose
				.rotation(0F, 0F, 0F)
		);
		return LayerDefinition.create(modelData, 64, 32);
	}

	@Override
	public void setupAnim(SparkstoneGolemRenderState state) {
	}
}

