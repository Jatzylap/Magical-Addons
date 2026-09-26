package com.maddons.api.awcapi.entity;

import com.maddons.api.awcapi.entity.movement.IAdvancedPathFindingEntity;
import java.util.List;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.core.Direction.Axis;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.phys.Vec3;
import org.apache.commons.lang3.tuple.Pair;
import org.jetbrains.annotations.Nullable;

public interface IAdvancedClimber extends IAdvancedPathFindingEntity {
   ClimberComponent getClimberComponent();

   default float getAttachmentOffset(Axis axis, float partialTicks) {
      return this.getClimberComponent().getAttachmentOffset(axis, partialTicks);
   }

   default float getVerticalOffset(float partialTicks) {
      return 0.075F;
   }

   default Orientation getOrientation() {
      return this.getClimberComponent().getOrientation();
   }

   default Orientation calculateOrientation(float partialTicks) {
      return this.getClimberComponent().calculateOrientation(partialTicks);
   }

   default void setRenderOrientation(Orientation orientation) {
      this.getClimberComponent().setRenderOrientation(orientation);
   }

   @Nullable
   default Orientation getRenderOrientation() {
      return this.getClimberComponent().getRenderOrientation();
   }

   default boolean isClimbing() {
      return this.getClimberComponent().isClimbing();
   }

   float getMovementSpeed();

   default Pair<Direction, Vec3> getGroundDirection() {
      return this.getClimberComponent().getGroundDirection();
   }

   default boolean shouldTrackPathingTargets() {
      return true;
   }

   @Nullable
   default Vec3 getTrackedMovementTarget() {
      return this.getClimberComponent().getTrackedMovementTarget();
   }

   @Nullable
   default List<PathingTarget> getTrackedPathingTargets() {
      return this.getClimberComponent().getTrackedPathingTargets();
   }

   default boolean canClimbOnBlock(BlockState state, BlockPos pos) {
      return true;
   }

   float getBlockSlipperiness(BlockPos var1);

   default boolean canClimberTriggerWalking() {
      return true;
   }

   default boolean canClimbInWater() {
      return this.getClimberComponent().canClimbInWater();
   }

   default void setCanClimbInWater(boolean value) {
      this.getClimberComponent().setCanClimbInWater(value);
   }

   default boolean canClimbInLava() {
      return this.getClimberComponent().canClimbInLava();
   }

   default void setCanClimbInLava(boolean value) {
      this.getClimberComponent().setCanClimbInLava(value);
   }

   default float getCollisionsInclusionRange() {
      return this.getClimberComponent().getCollisionsInclusionRange();
   }

   default void setCollisionsInclusionRange(float range) {
      this.getClimberComponent().setCollisionsInclusionRange(range);
   }

   default float getCollisionsSmoothingRange() {
      return this.getClimberComponent().getCollisionsSmoothingRange();
   }

   default void setCollisionsSmoothingRange(float range) {
      this.getClimberComponent().setCollisionsSmoothingRange(range);
   }

   default void setJumpDirection(@Nullable Vec3 dir) {
      this.getClimberComponent().setJumpDirection(dir);
   }

   Mob asMob();

   void setLerpYRot(Float var1);

   void setLerpXRot(Float var1);

   void setLerpYHeadRot(Float var1);

   void setLerpHeadSteps(int var1);
}
