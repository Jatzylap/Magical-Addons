package com.maddons.client.renderer.entity;

import com.maddons.Maddons;
import com.maddons.api.awcapi.ClientClimberHelper;
import com.maddons.client.model.SculkSpiderModel;
import com.maddons.client.model.geom.ModelLayers;
import com.maddons.client.renderer.entity.state.SculkSpiderRenderState;
import com.maddons.entity.monster.SculkSpider;
import com.mojang.blaze3d.vertex.PoseStack;

import net.minecraft.client.renderer.entity.MobRenderer;
import net.minecraft.client.renderer.entity.layers.LivingEntityEmissiveLayer;
import net.minecraft.client.renderer.rendertype.RenderTypes;
import net.minecraft.resources.Identifier;
import net.minecraft.client.renderer.entity.EntityRendererProvider;

public class SculkSpiderRenderer extends MobRenderer<SculkSpider, SculkSpiderRenderState, SculkSpiderModel>
{
	private static final Identifier TEXTURE = Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "textures/entity/sculk_spider.png");
	private static final Identifier BIOLUMINESCENT_LAYER_TEXTURE = Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "textures/entity/sculk_spider_bioluminescent_layer.png");

	public SculkSpiderRenderer(EntityRendererProvider.Context context)
	{
		super(context, new SculkSpiderModel(context.bakeLayer(ModelLayers.SCULK_SPIDER)), 0.9F); // 0.9F = shadow radius
		SculkSpiderModel bioluminescentModel = new SculkSpiderModel(context.bakeLayer(ModelLayers.SCULK_SPIDER_BIOLUMINESCENT));
		this.addLayer(
			new LivingEntityEmissiveLayer<>(
				this, renderState -> BIOLUMINESCENT_LAYER_TEXTURE, (sculk_spider, ageInTicks) -> 1.0F, bioluminescentModel, RenderTypes::entityTranslucentEmissive, true
			)
		);
	}

    @Override
    protected void scale(SculkSpiderRenderState state, PoseStack poseStack)
	{
        if (state.isBaby) {
            poseStack.scale(0.5F, 0.5F, 0.5F);
        }
        poseStack.translate(0.0, 0.2, 0.0);
    }

	@Override
	protected float getFlipDegrees()
	{
		return 180.0F;
	}

	@Override
	public SculkSpiderRenderState createRenderState()
	{
		return new SculkSpiderRenderState();
	}

	@Override
	public Identifier getTextureLocation(SculkSpiderRenderState state)
	{
		return TEXTURE;
	}

	@Override
	public void extractRenderState(SculkSpider entity, SculkSpiderRenderState state, final float partialTicks)
	{
		super.extractRenderState(entity, state, partialTicks);
        ClientClimberHelper.extractClimbingRenderState(entity, state, partialTicks);
	}
/*
	@Override
	protected void setupRotations(SculkSpiderRenderState renderState, PoseStack poseStack, float bodyRot, float entityScale)
	{
      	float pitch = renderState.awca$getPitch();
      	float componentX = renderState.awca$getComponentX();
      	float componentY = renderState.awca$getComponentY();
      	float componentZ = renderState.awca$getComponentZ();
      	float verticalOffset = renderState.awca$getVerticalOffset();
      	float attachmentOffsetX = renderState.awca$getAttachmentOffsetX();
      	float attachmentOffsetY = renderState.awca$getAttachmentOffsetY();
      	float attachmentOffsetZ = renderState.awca$getAttachmentOffsetZ();
      	float x = attachmentOffsetX - (float)normal.x * verticalOffset;
      	float y = attachmentOffsetY - (float)normal.y * verticalOffset;
      	float z = attachmentOffsetZ - (float)normal.z * verticalOffset;
      	poseStack.mulPose(com.mojang.math.Axis.YP.rotationDegrees(-Math.signum(0.5F - componentY - componentZ - componentX) * yaw));
      	poseStack.mulPose(com.mojang.math.Axis.XP.rotationDegrees(-pitch));
      	poseStack.mulPose(com.mojang.math.Axis.YP.rotationDegrees(-yaw));
      	poseStack.translate(-x, -y, -z);

      	Vec3 normal = renderState.awca$getNormal();
      	float yaw = renderState.awca$getYaw();
      	float pitch = renderState.awca$getPitch();
      	float componentX = renderState.awca$getComponentX();
      	float componentY = renderState.awca$getComponentY();
      	float componentZ = renderState.awca$getComponentZ();
      	float verticalOffset = renderState.awca$getVerticalOffset();
      	float attachmentOffsetX = renderState.awca$getAttachmentOffsetX();
      	float attachmentOffsetY = renderState.awca$getAttachmentOffsetY();
      	float attachmentOffsetZ = renderState.awca$getAttachmentOffsetZ();
		float deathRot = 180F;
      	float x = attachmentOffsetX - (float)normal.x * verticalOffset;
      	float y = attachmentOffsetY - (float)normal.y * verticalOffset;
      	float z = attachmentOffsetZ - (float)normal.z * verticalOffset;
      	poseStack.translate(x, y, z);
      	poseStack.mulPose(com.mojang.math.Axis.YP.rotationDegrees(yaw));
      	poseStack.mulPose(com.mojang.math.Axis.XP.rotationDegrees(pitch));
      	poseStack.mulPose(com.mojang.math.Axis.YP.rotationDegrees(Math.signum(0.5F - componentY - componentZ - componentX) * yaw));

		// For death animation
		if (renderState.deathTime > 0.0F)
		{
			float fall = (renderState.deathTime - 1.0F) / 20.0F * 1.6F;
			fall = Mth.sqrt(fall);
			if (fall > 1.0F)
			{
				fall = 1.0F;
			}
			poseStack.mulPose(Axis.ZP.rotationDegrees(fall * deathRot));
		}
	}
*/
}