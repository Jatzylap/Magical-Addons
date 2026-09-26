package com.maddons.client.renderer.entity.state;

import com.maddons.api.awcapi.client.IAdvancedClimberRenderState;
import net.minecraft.client.renderer.entity.state.LivingEntityRenderState;
import net.minecraft.world.phys.Vec3;

public class SculkSpiderRenderState extends LivingEntityRenderState implements IAdvancedClimberRenderState
{
   private boolean climbing;
   private Vec3 normal = new Vec3(0.0, 1.0, 0.0);
   private Vec3 localX = new Vec3(1.0, 0.0, 0.0);
   private Vec3 localY = new Vec3(0.0, 1.0, 0.0);
   private Vec3 localZ = new Vec3(0.0, 0.0, 1.0);
   private float componentX;
   private float componentY;
   private float componentZ;
   private float yaw;
   private float pitch;
   private float attachmentOffsetX;
   private float attachmentOffsetY;
   private float attachmentOffsetZ;
   private float verticalOffset;

   public boolean awca$isClimbing() {
      return this.climbing;
   }

   public void awca$setClimbing(boolean climbing) {
      this.climbing = climbing;
   }

   public Vec3 awca$getNormal() {
      return this.normal;
   }

   public void awca$setNormal(Vec3 normal) {
      this.normal = normal;
   }

   public Vec3 awca$getLocalX() {
      return this.localX;
   }

   public void awca$setLocalX(Vec3 localX) {
      this.localX = localX;
   }

   public Vec3 awca$getLocalY() {
      return this.localY;
   }

   public void awca$setLocalY(Vec3 localY) {
      this.localY = localY;
   }

   public Vec3 awca$getLocalZ() {
      return this.localZ;
   }

   public void awca$setLocalZ(Vec3 localZ) {
      this.localZ = localZ;
   }

   public float awca$getComponentX() {
      return this.componentX;
   }

   public void awca$setComponentX(float componentX) {
      this.componentX = componentX;
   }

   public float awca$getComponentY() {
      return this.componentY;
   }

   public void awca$setComponentY(float componentY) {
      this.componentY = componentY;
   }

   public float awca$getComponentZ() {
      return this.componentZ;
   }

   public void awca$setComponentZ(float componentZ) {
      this.componentZ = componentZ;
   }

   public float awca$getYaw() {
      return this.yaw;
   }

   public void awca$setYaw(float yaw) {
      this.yaw = yaw;
   }

   public float awca$getPitch() {
      return this.pitch;
   }

   public void awca$setPitch(float pitch) {
      this.pitch = pitch;
   }

   public float awca$getAttachmentOffsetX() {
      return this.attachmentOffsetX;
   }

   public void awca$setAttachmentOffsetX(float offset) {
      this.attachmentOffsetX = offset;
   }

   public float awca$getAttachmentOffsetY() {
      return this.attachmentOffsetY;
   }

   public void awca$setAttachmentOffsetY(float offset) {
      this.attachmentOffsetY = offset;
   }

   public float awca$getAttachmentOffsetZ() {
      return this.attachmentOffsetZ;
   }

   public void awca$setAttachmentOffsetZ(float offset) {
      this.attachmentOffsetZ = offset;
   }

   public float awca$getVerticalOffset() {
      return this.verticalOffset;
   }

   public void awca$setVerticalOffset(float offset) {
      this.verticalOffset = offset;
   }
}
