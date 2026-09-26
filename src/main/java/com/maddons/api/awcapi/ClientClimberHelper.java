package com.maddons.api.awcapi;

import com.mojang.blaze3d.vertex.PoseStack;
import com.maddons.api.awcapi.client.IAdvancedClimberRenderState;
import com.maddons.api.awcapi.entity.IAdvancedClimber;
import com.maddons.api.awcapi.entity.Orientation;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.components.debug.DebugScreenEntries;
import net.minecraft.core.Direction.Axis;
import net.minecraft.gizmos.GizmoStyle;
import net.minecraft.gizmos.Gizmos;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.phys.AABB;
import net.minecraft.world.phys.Vec3;

public class ClientClimberHelper {
   public static <S extends IAdvancedClimberRenderState> void extractClimbingRenderState(LivingEntity entity, S renderState, float partialTick) {
      if (entity instanceof IAdvancedClimber climber)
      {
         renderState.awca$setClimbing(true);
         Orientation orientation = climber.calculateOrientation(partialTick);
         renderState.awca$setNormal(orientation.normal);
         renderState.awca$setLocalX(orientation.localX);
         renderState.awca$setLocalY(orientation.localY);
         renderState.awca$setLocalZ(orientation.localZ);
         renderState.awca$setComponentX(orientation.componentX);
         renderState.awca$setComponentY(orientation.componentY);
         renderState.awca$setComponentZ(orientation.componentZ);
         renderState.awca$setYaw(orientation.yaw);
         renderState.awca$setPitch(orientation.pitch);
         renderState.awca$setAttachmentOffsetX(climber.getAttachmentOffset(Axis.X, partialTick));
         renderState.awca$setAttachmentOffsetY(climber.getAttachmentOffset(Axis.Y, partialTick));
         renderState.awca$setAttachmentOffsetZ(climber.getAttachmentOffset(Axis.Z, partialTick));
         renderState.awca$setVerticalOffset(climber.getVerticalOffset(partialTick));
      } else {
         renderState.awca$setClimbing(false);
      }
   }

   public static <S extends IAdvancedClimberRenderState> boolean preRenderClimber(S renderState, PoseStack poseStack) {
      if (!renderState.awca$isClimbing()) {
         return false;
      }
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
      float x = attachmentOffsetX - (float)normal.x * verticalOffset;
      float y = attachmentOffsetY - (float)normal.y * verticalOffset;
      float z = attachmentOffsetZ - (float)normal.z * verticalOffset;
      poseStack.translate(x, y, z);
      poseStack.mulPose(com.mojang.math.Axis.YP.rotationDegrees(yaw));
      poseStack.mulPose(com.mojang.math.Axis.XP.rotationDegrees(pitch));
      poseStack.mulPose(com.mojang.math.Axis.YP.rotationDegrees(Math.signum(0.5F - componentY - componentZ - componentX) * yaw));
      return true;
   }

   public static <S extends IAdvancedClimberRenderState> boolean postRenderClimber(S renderState, PoseStack poseStack)
   {
      if (!renderState.awca$isClimbing()) {
         return false;
      }
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
      float x = attachmentOffsetX - (float)normal.x * verticalOffset;
      float y = attachmentOffsetY - (float)normal.y * verticalOffset;
      float z = attachmentOffsetZ - (float)normal.z * verticalOffset;
      poseStack.mulPose(com.mojang.math.Axis.YP.rotationDegrees(-Math.signum(0.5F - componentY - componentZ - componentX) * yaw));
      poseStack.mulPose(com.mojang.math.Axis.XP.rotationDegrees(-pitch));
      poseStack.mulPose(com.mojang.math.Axis.YP.rotationDegrees(-yaw));
      if (Minecraft.getInstance().debugEntries.isCurrentlyEnabled(DebugScreenEntries.ENTITY_HITBOXES)) {
         renderDebugInfoFromState(renderState, poseStack, x, y, z);
      }

      poseStack.translate(-x, -y, -z);
      return true;
   }

   private static <S extends IAdvancedClimberRenderState> void renderDebugInfoFromState(S state, PoseStack poseStack, float x, float y, float z) {
      Vec3 normal = state.awca$getNormal();
      Vec3 localX = state.awca$getLocalX();
      Vec3 localY = state.awca$getLocalY();
      Vec3 localZ = state.awca$getLocalZ();
      Gizmos.cuboid(new AABB(0.0, 0.0, 0.0, 0.0, 0.0, 0.0).inflate(0.2F), GizmoStyle.stroke(-1));
      Vec3 origin = Vec3.ZERO;
      Vec3 normalEnd = new Vec3(normal.x * 2.0, normal.y * 2.0, normal.z * 2.0);
      Gizmos.arrow(origin, normalEnd, -65281);
      Gizmos.cuboid(new AABB(0.0, 0.0, 0.0, 0.0, 0.0, 0.0).move(normalEnd.x, normalEnd.y, normalEnd.z).inflate(0.025F), GizmoStyle.stroke(-65281));
      float halfHeight = 0.5F;
      Vec3 axisOrigin = new Vec3(-x, halfHeight - y, -z);
      Vec3 localXEnd = new Vec3(-x + localX.x, halfHeight - y + localX.y, -z + localX.z);
      Gizmos.arrow(axisOrigin, localXEnd, -65536);
      Gizmos.cuboid(new AABB(0.0, 0.0, 0.0, 0.0, 0.0, 0.0).move(localXEnd.x, localXEnd.y, localXEnd.z).inflate(0.025F), GizmoStyle.stroke(-65536));
      Vec3 localYEnd = new Vec3(-x + localY.x, halfHeight - y + localY.y, -z + localY.z);
      Gizmos.arrow(axisOrigin, localYEnd, -16711936);
      Gizmos.cuboid(new AABB(0.0, 0.0, 0.0, 0.0, 0.0, 0.0).move(localYEnd.x, localYEnd.y, localYEnd.z).inflate(0.025F), GizmoStyle.stroke(-16711936));
      Vec3 localZEnd = new Vec3(-x + localZ.x, halfHeight - y + localZ.y, -z + localZ.z);
      Gizmos.arrow(axisOrigin, localZEnd, -16776961);
      Gizmos.cuboid(new AABB(0.0, 0.0, 0.0, 0.0, 0.0, 0.0).move(localZEnd.x, localZEnd.y, localZEnd.z).inflate(0.025F), GizmoStyle.stroke(-16776961));
   }
}
