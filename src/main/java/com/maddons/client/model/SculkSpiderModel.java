// Made with Blockbench 5.0.7
// Exported for Minecraft version 1.17 or later with Mojang mappings
// Paste this class into your mod and generate all required imports

package com.maddons.client.model;

import com.maddons.client.renderer.entity.state.SculkSpiderRenderState;
import java.util.Set;
import net.minecraft.client.model.EntityModel;
import net.minecraft.client.model.geom.ModelPart;
import net.minecraft.client.model.geom.PartPose;
import net.minecraft.client.model.geom.builders.CubeDeformation;
import net.minecraft.client.model.geom.builders.CubeListBuilder;
import net.minecraft.client.model.geom.builders.LayerDefinition;
import net.minecraft.client.model.geom.builders.MeshDefinition;
import net.minecraft.client.model.geom.builders.PartDefinition;
import net.minecraft.util.Mth;

public class SculkSpiderModel extends EntityModel<SculkSpiderRenderState>
{
	private final ModelPart right_hind_leg;
	private final ModelPart left_hind_leg;
	private final ModelPart right_hind_middle_leg;
	private final ModelPart left_hind_middle_leg;
	private final ModelPart right_front_middle_leg;
	private final ModelPart left_front_middle_leg;
	private final ModelPart right_front_leg;
	private final ModelPart left_front_leg;
	private final ModelPart head;
	private final ModelPart body0;
	private final ModelPart body1;
	private final ModelPart tail;

	public SculkSpiderModel(ModelPart root)
	{
		super(root);
		this.right_hind_leg = root.getChild("right_hind_leg");
		this.left_hind_leg = root.getChild("left_hind_leg");
		this.right_hind_middle_leg = root.getChild("right_hind_middle_leg");
		this.left_hind_middle_leg = root.getChild("left_hind_middle_leg");
		this.right_front_middle_leg = root.getChild("right_front_middle_leg");
		this.left_front_middle_leg = root.getChild("left_front_middle_leg");
		this.right_front_leg = root.getChild("right_front_leg");
		this.left_front_leg = root.getChild("left_front_leg");
		this.head = root.getChild("head");
		this.body0 = root.getChild("body0");
		this.body1 = root.getChild("body1");
		this.tail = root.getChild("tail");
	}

	public static LayerDefinition createBodyLayer() {
		MeshDefinition meshdefinition = new MeshDefinition();
		PartDefinition partdefinition = meshdefinition.getRoot();

		PartDefinition right_hind_leg = partdefinition.addOrReplaceChild("right_hind_leg", CubeListBuilder.create().texOffs(46, 24).mirror().addBox(-15.0F, -1.0F, -1.0F, 16.0F, 2.0F, 2.0F, new CubeDeformation(0.0F)).mirror(false), PartPose.offsetAndRotation(-4.0F, 12.0F, 0.0F, 0.0F, 0.7854F, -0.7854F));

		PartDefinition left_hind_leg = partdefinition.addOrReplaceChild("left_hind_leg", CubeListBuilder.create().texOffs(46, 28).addBox(-1.0F, -1.0F, -1.0F, 16.0F, 2.0F, 2.0F, new CubeDeformation(0.0F)), PartPose.offsetAndRotation(4.0F, 12.0F, 0.0F, 0.0F, -0.7854F, 0.7854F));

		PartDefinition right_hind_middle_leg = partdefinition.addOrReplaceChild("right_hind_middle_leg", CubeListBuilder.create().texOffs(46, 24).mirror().addBox(-15.0F, -1.0F, -1.0F, 16.0F, 2.0F, 2.0F, new CubeDeformation(0.0F)).mirror(false), PartPose.offsetAndRotation(-4.0F, 12.0F, -1.0F, 0.0F, 0.3927F, -0.5812F));

		PartDefinition left_hind_middle_leg = partdefinition.addOrReplaceChild("left_hind_middle_leg", CubeListBuilder.create().texOffs(46, 28).addBox(-1.0F, -1.0F, -1.0F, 16.0F, 2.0F, 2.0F, new CubeDeformation(0.0F)), PartPose.offsetAndRotation(4.0F, 12.0F, -1.0F, 0.0F, -0.3927F, 0.5812F));

		PartDefinition right_front_middle_leg = partdefinition.addOrReplaceChild("right_front_middle_leg", CubeListBuilder.create().texOffs(46, 24).mirror().addBox(-15.0F, -1.0F, -1.0F, 16.0F, 2.0F, 2.0F, new CubeDeformation(0.0F)).mirror(false), PartPose.offsetAndRotation(-4.0F, 12.0F, -2.0F, 0.0F, -0.3927F, -0.5812F));

		PartDefinition left_front_middle_leg = partdefinition.addOrReplaceChild("left_front_middle_leg", CubeListBuilder.create().texOffs(46, 28).addBox(-1.0F, -1.0F, -1.0F, 16.0F, 2.0F, 2.0F, new CubeDeformation(0.0F)), PartPose.offsetAndRotation(4.0F, 12.0F, -2.0F, 0.0F, 0.3927F, 0.5812F));

		PartDefinition right_front_leg = partdefinition.addOrReplaceChild("right_front_leg", CubeListBuilder.create().texOffs(46, 24).mirror().addBox(-15.0F, -1.0F, -1.0F, 16.0F, 2.0F, 2.0F, new CubeDeformation(0.0F)).mirror(false), PartPose.offsetAndRotation(-4.0F, 12.0F, -3.0F, 0.0F, -0.7854F, -0.7854F));

		PartDefinition left_front_leg = partdefinition.addOrReplaceChild("left_front_leg", CubeListBuilder.create().texOffs(46, 28).addBox(-1.0F, -1.0F, -1.0F, 16.0F, 2.0F, 2.0F, new CubeDeformation(0.0F)), PartPose.offsetAndRotation(4.0F, 12.0F, -3.0F, 0.0F, 0.7854F, 0.7854F));

		PartDefinition head = partdefinition.addOrReplaceChild("head", CubeListBuilder.create().texOffs(32, 4).addBox(-4.0F, -4.0F, -11.0F, 8.0F, 8.0F, 8.0F, new CubeDeformation(0.0F)), PartPose.offset(0.0F, 12.0F, -2.0F));

		PartDefinition body0 = partdefinition.addOrReplaceChild("body0", CubeListBuilder.create().texOffs(0, 0).addBox(-3.0F, -3.0F, -3.0F, 6.0F, 6.0F, 6.0F, new CubeDeformation(0.0F)), PartPose.offset(0.0F, 12.0F, -2.0F));

		PartDefinition body1 = partdefinition.addOrReplaceChild("body1", CubeListBuilder.create().texOffs(0, 12).addBox(-5.0F, -4.0F, 3.0F, 10.0F, 8.0F, 12.0F, new CubeDeformation(0.0F)), PartPose.offset(0.0F, 12.0F, -2.0F));

		PartDefinition tail = partdefinition.addOrReplaceChild("tail", CubeListBuilder.create().texOffs(56, 3).addBox(-8.0F, -8.0F, 13.0F, 16.0F, 9.0F, 0.0F, new CubeDeformation(0.0F))
		.texOffs(79, 10).addBox(3.0F, -3.0F, 15.0F, 0.0F, 6.0F, 2.0F, new CubeDeformation(0.0F))
		.texOffs(79, 10).addBox(-3.0F, -3.0F, 15.0F, 0.0F, 6.0F, 2.0F, new CubeDeformation(0.0F))
		.texOffs(67, 16).addBox(-3.0F, 2.0F, 15.0F, 6.0F, 0.0F, 2.0F, new CubeDeformation(0.0F))
		.texOffs(67, 16).addBox(-3.0F, -2.0F, 15.0F, 6.0F, 0.0F, 2.0F, new CubeDeformation(0.0F)), PartPose.offset(0.0F, 12.0F, -2.0F));

		return LayerDefinition.create(meshdefinition, 128, 64);
	}

	public static LayerDefinition createBioluminescentLayer() {
		return createBodyLayer().apply(mesh -> {
			mesh.getRoot().retainExactParts(Set.of("head", "body0", "body1", "tail"));
			return mesh;
		});
	}

	@Override
	public void setupAnim(final SculkSpiderRenderState state)
	{
		super.setupAnim(state);
		this.head.yRot = state.yRot * (float) (Math.PI / 180.0);
		this.head.xRot = state.xRot * (float) (Math.PI / 180.0);
		float animationPos = state.walkAnimationPos * 0.6662F;
		float animationSpeed = state.walkAnimationSpeed * (state.isBaby ? 2.0F : 1.0F);
		float swingHind = -(Mth.cos(animationPos * 2.0F) * 0.4F) * animationSpeed;
		float swingMiddleHind = -(Mth.cos(animationPos * 2.0F + (float) Math.PI) * 0.4F) * animationSpeed;
		float swingMiddleFront = -(Mth.cos(animationPos * 2.0F + (float) (Math.PI / 2)) * 0.4F) * animationSpeed;
		float swingFront = -(Mth.cos(animationPos * 2.0F + (float) (Math.PI * 3.0 / 2.0)) * 0.4F) * animationSpeed;
		float stepHind = Math.abs(Mth.sin(animationPos) * 0.4F) * animationSpeed;
		float stepMiddleHind = Math.abs(Mth.sin(animationPos + (float) Math.PI) * 0.4F) * animationSpeed;
		float stepMiddleFrontHind = Math.abs(Mth.sin(animationPos + (float) (Math.PI / 2)) * 0.4F) * animationSpeed;
		float stepFront = Math.abs(Mth.sin(animationPos + (float) (Math.PI * 3.0 / 2.0)) * 0.4F) * animationSpeed;
		this.right_hind_leg.yRot += swingHind;
		this.left_hind_leg.yRot -= swingHind;
		this.right_hind_middle_leg.yRot += swingMiddleHind;
		this.left_hind_middle_leg.yRot -= swingMiddleHind;
		this.right_front_middle_leg.yRot += swingMiddleFront;
		this.left_front_middle_leg.yRot -= swingMiddleFront;
		this.right_front_leg.yRot += swingFront;
		this.left_front_leg.yRot -= swingFront;
		this.right_hind_leg.zRot += stepHind;
		this.left_hind_leg.zRot -= stepHind;
		this.right_hind_middle_leg.zRot += stepMiddleHind;
		this.left_hind_middle_leg.zRot -= stepMiddleHind;
		this.right_front_middle_leg.zRot += stepMiddleFrontHind;
		this.left_front_middle_leg.zRot -= stepMiddleFrontHind;
		this.right_front_leg.zRot += stepFront;
		this.left_front_leg.zRot -= stepFront;
	}
}