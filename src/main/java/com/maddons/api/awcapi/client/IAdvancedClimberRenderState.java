package com.maddons.api.awcapi.client;

import net.minecraft.world.phys.Vec3;

public interface IAdvancedClimberRenderState
{
   boolean awca$isClimbing();

   void awca$setClimbing(boolean var1);

   Vec3 awca$getNormal();

   void awca$setNormal(Vec3 var1);

   Vec3 awca$getLocalX();

   void awca$setLocalX(Vec3 var1);

   Vec3 awca$getLocalY();

   void awca$setLocalY(Vec3 var1);

   Vec3 awca$getLocalZ();

   void awca$setLocalZ(Vec3 var1);

   float awca$getComponentX();

   void awca$setComponentX(float var1);

   float awca$getComponentY();

   void awca$setComponentY(float var1);

   float awca$getComponentZ();

   void awca$setComponentZ(float var1);

   float awca$getYaw();

   void awca$setYaw(float var1);

   float awca$getPitch();

   void awca$setPitch(float var1);

   float awca$getAttachmentOffsetX();

   void awca$setAttachmentOffsetX(float var1);

   float awca$getAttachmentOffsetY();

   void awca$setAttachmentOffsetY(float var1);

   float awca$getAttachmentOffsetZ();

   void awca$setAttachmentOffsetZ(float var1);

   float awca$getVerticalOffset();

   void awca$setVerticalOffset(float var1);
}
