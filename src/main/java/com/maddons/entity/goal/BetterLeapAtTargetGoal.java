package com.maddons.entity.goal;

import com.maddons.api.awcapi.entity.IAdvancedClimber;
import com.maddons.api.awcapi.entity.Orientation;
import java.util.EnumSet;
import net.minecraft.util.Mth;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.entity.ai.goal.Goal;
import net.minecraft.world.phys.Vec3;
import org.apache.commons.lang3.tuple.Triple;

public class BetterLeapAtTargetGoal<T extends Mob & IAdvancedClimber> extends Goal {
   private final T leaper;
   private final float leapMotionY;
   private LivingEntity leapTarget;
   private Vec3 forwardJumpDirection;
   private Vec3 upwardJumpDirection;

   public BetterLeapAtTargetGoal(T leapingEntity, float leapMotionYIn) {
      this.leaper = leapingEntity;
      this.leapMotionY = leapMotionYIn;
      this.setFlags(EnumSet.of(Flag.JUMP, Flag.MOVE));
   }

   public boolean canUse() {
      if (!this.leaper.isVehicle()) {
         this.leapTarget = this.leaper.getTarget();
         if (this.leapTarget != null && this.leaper.onGround()) {
            Triple<Vec3, Vec3, Vec3> projectedVector = this.getProjectedVector(this.leapTarget.position());
            double dstSq = ((Vec3)projectedVector.getLeft()).lengthSqr();
            double dstSqDot = ((Vec3)projectedVector.getMiddle()).lengthSqr();
            if (dstSq >= 4.0 && dstSq <= 16.0 && dstSqDot <= 1.2F && this.leaper.getRandom().nextInt(5) == 0) {
               this.forwardJumpDirection = ((Vec3)projectedVector.getLeft()).normalize();
               this.upwardJumpDirection = ((Vec3)projectedVector.getRight()).normalize();
               return true;
            }
         }
      }

      return false;
   }

   public boolean canContinueToUse() {
      return !this.leaper.onGround();
   }

   public void start() {
      Vec3 motion = this.leaper.getDeltaMovement();
      Vec3 jumpVector = this.forwardJumpDirection;
      if (jumpVector.lengthSqr() > 1.0E-7) {
         jumpVector = jumpVector.normalize().scale(0.4).add(motion.scale(0.2));
      }

      jumpVector = jumpVector.add(this.upwardJumpDirection.scale(this.leapMotionY));
      jumpVector = new Vec3(
         jumpVector.x * (1.0 - Math.abs(this.upwardJumpDirection.x)), jumpVector.y, jumpVector.z * (1.0 - Math.abs(this.upwardJumpDirection.z))
      );
      this.leaper.setDeltaMovement(jumpVector);
      Orientation orientation = this.leaper.getOrientation();
      float rx = (float)orientation.localZ.dot(jumpVector);
      float ry = (float)orientation.localX.dot(jumpVector);
      this.leaper.setYRot(270.0F - (float)Math.toDegrees(Mth.atan2(rx, ry)));
   }

   protected Triple<Vec3, Vec3, Vec3> getProjectedVector(Vec3 target) {
      Orientation orientation = this.leaper.getOrientation();
      Vec3 up = orientation.getGlobal(this.leaper.getYRot(), -90.0F);
      Vec3 diff = target.subtract(this.leaper.position());
      Vec3 dot = up.scale(up.dot(diff));
      return Triple.of(diff.subtract(dot), dot, up);
   }
}
