package com.maddons.client.mixin;

import com.mojang.blaze3d.vertex.PoseStack;
import com.maddons.api.awcapi.ClientClimberHelper;
import com.maddons.api.awcapi.client.IAdvancedClimberRenderState;

import net.minecraft.client.model.EntityModel;
import net.minecraft.client.renderer.SubmitNodeCollector;
import net.minecraft.client.renderer.entity.EntityRenderer;
import net.minecraft.client.renderer.entity.LivingEntityRenderer;
import net.minecraft.client.renderer.entity.RenderLayerParent;
import net.minecraft.client.renderer.entity.EntityRendererProvider.Context;
import net.minecraft.client.renderer.entity.state.LivingEntityRenderState;
import net.minecraft.client.renderer.state.level.CameraRenderState;
import net.minecraft.world.entity.LivingEntity;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(LivingEntityRenderer.class)
public abstract class LivingRendererMixin<T extends LivingEntity, S extends LivingEntityRenderState, M extends EntityModel<? super S>>
   extends EntityRenderer<T, S>
   implements RenderLayerParent<S, M> {
   protected LivingRendererMixin(Context context) {
      super(context);
   }

   @Inject(method = "submit", at = @At("HEAD"))
   private void livingRenderPre(S state, PoseStack poseStack, SubmitNodeCollector submitNodeCollector, CameraRenderState camera, CallbackInfo ci) {
      if (state instanceof IAdvancedClimberRenderState climberState) {
         ClientClimberHelper.preRenderClimber(climberState, poseStack);
      }
   }

   @Inject(method = "submit", at = @At("RETURN"))
   private void livingRenderPost(S state, PoseStack poseStack, SubmitNodeCollector submitNodeCollector, CameraRenderState camera, CallbackInfo ci) {
      if (state instanceof IAdvancedClimberRenderState climberState) {
         ClientClimberHelper.postRenderClimber(climberState, poseStack);
      }
   }
}
