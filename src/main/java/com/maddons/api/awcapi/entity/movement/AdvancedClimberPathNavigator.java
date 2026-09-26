package com.maddons.api.awcapi.entity.movement;

import com.google.common.collect.ImmutableSet;
import com.maddons.api.awcapi.entity.IAdvancedClimber;
import com.maddons.api.awcapi.entity.Orientation;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.core.Direction.Axis;
import net.minecraft.util.Mth;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.entity.ai.control.MoveControl;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.pathfinder.Node;
import net.minecraft.world.level.pathfinder.Path;
import net.minecraft.world.level.pathfinder.PathType;
import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.shapes.VoxelShape;
import org.jetbrains.annotations.Nullable;

public class AdvancedClimberPathNavigator<T extends Mob & IAdvancedClimber> extends AdvancedGroundPathNavigator<T> {
   protected final IAdvancedClimber climber;
   protected Direction verticalFacing = Direction.DOWN;
   protected boolean findDirectPathPoints = false;

   public AdvancedClimberPathNavigator(T entity, Level worldIn, boolean checkObstructions, boolean canPathWalls, boolean canPathCeiling) {
      super(entity, worldIn, checkObstructions);
      this.climber = entity;
      if (this.nodeEvaluator instanceof AdvancedWalkNodeProcessor processor) {
         processor.setStartPathOnGround(false);
         processor.setCanPathWalls(canPathWalls);
         processor.setCanPathCeiling(canPathCeiling);
      }
   }

   protected Vec3 getTempMobPos() {
      return this.mob.position().add(0.0, this.mob.getBbHeight() / 2.0F, 0.0);
   }

   @Nullable
   public Path createPath(BlockPos pos, int checkpointRange) {
      return this.createPath(ImmutableSet.of(pos), 8, false, checkpointRange);
   }

   @Nullable
   public Path createPath(Entity entityIn, int checkpointRange) {
      return this.createPath(ImmutableSet.of(entityIn.blockPosition()), 16, true, checkpointRange);
   }

   public void tick() {
      this.tick++;
      if (this.hasDelayedRecomputation) {
         this.recomputePath();
      }

      if (!this.isDone()) {
         if (this.canUpdatePath()) {
            this.followThePath();
         } else if (this.path != null && !this.path.isDone()) {
            Vec3 pos = this.getTempMobPos();
            Vec3 targetPos = this.path.getNextEntityPos(this.mob);
            if (pos.y > targetPos.y && !this.mob.onGround() && Mth.floor(pos.x) == Mth.floor(targetPos.x) && Mth.floor(pos.z) == Mth.floor(targetPos.z)) {
               this.path.advance();
            }
         }

         if (!this.isDone()) {
            Node targetPoint = this.path.getNode(this.path.getNextNodeIndex());
            Direction dir = null;
            if (targetPoint instanceof DirectionalPathPoint directionalPoint) {
               dir = directionalPoint.getPathSide();
            }

            if (dir == null) {
               dir = Direction.DOWN;
            }

            Vec3 targetPos = this.getExactPathingTarget(this.level, targetPoint.asBlockPos(), dir);
            MoveControl<?> moveController = this.mob.getMoveControl();
            if (moveController instanceof ClimberMoveController
               && targetPoint instanceof DirectionalPathPoint directionalPoint
               && directionalPoint.getPathSide() != null) {
               ((ClimberMoveController<?>)moveController)
                  .setMoveTo(targetPos.x, targetPos.y, targetPos.z, targetPoint.asBlockPos().relative(dir), directionalPoint.getPathSide(), this.speedModifier);
            } else {
               moveController.setWantedPosition(targetPos.x, targetPos.y, targetPos.z, this.speedModifier);
            }
         }
      }
   }

   public Vec3 getExactPathingTarget(BlockGetter blockaccess, BlockPos pos, Direction dir) {
      BlockPos offsetPos = pos.relative(dir);
      VoxelShape shape = blockaccess.getBlockState(offsetPos).getCollisionShape(blockaccess, offsetPos);
      Axis axis = dir.getAxis();
      int sign = dir.getStepX() + dir.getStepY() + dir.getStepZ();
      double offset = shape.isEmpty() ? sign : (sign > 0 ? shape.min(axis) - 1.0 : shape.max(axis));
      double marginXZ = 1.0F - this.mob.getBbWidth() % 1.0F;
      double marginY = 1.0F - this.mob.getBbHeight() % 1.0F;
      double pathingOffsetXZ = (int)(this.mob.getBbWidth() + 1.0F) * 0.5;
      double pathingOffsetY = (int)(this.mob.getBbHeight() + 1.0F) * 0.5 - this.mob.getBbHeight() * 0.5F;
      double x = offsetPos.getX() + pathingOffsetXZ + dir.getStepX() * marginXZ;
      double y = offsetPos.getY() + pathingOffsetY + (dir == Direction.DOWN ? -pathingOffsetY : 0.0) + (dir == Direction.UP ? -pathingOffsetY + marginY : 0.0);
      double z = offsetPos.getZ() + pathingOffsetXZ + dir.getStepZ() * marginXZ;

      return switch (axis) {
         case X -> new Vec3(x + offset, y, z);
         case Y -> new Vec3(x, y + offset, z);
         case Z -> new Vec3(x, y, z + offset);
         default -> throw new MatchException(null, null);
      };
   }

   protected void followThePath() {
      Vec3 pos = this.getTempMobPos();
      this.maxDistanceToWaypoint = this.mob.getBbWidth() > 0.75F ? this.mob.getBbWidth() / 2.0F : 0.75F - this.mob.getBbWidth() / 2.0F;
      float maxDistanceToWaypointY = Math.max(1.0F, this.mob.getBbHeight() > 0.75F ? this.mob.getBbHeight() / 2.0F : 0.75F - this.mob.getBbHeight() / 2.0F);
      int sizeX = Mth.ceil(this.mob.getBbWidth());
      int sizeY = Mth.ceil(this.mob.getBbHeight());
      int sizeZ = sizeX;
      Orientation orientation = this.climber.getOrientation();
      Vec3 upVector = orientation.getGlobal(this.mob.getYRot(), -90.0F);
      this.verticalFacing = Direction.getApproximateNearest((float)upVector.x, (float)upVector.y, (float)upVector.z);

      for (int i = 4; i >= 0; i--) {
         if (this.path.getNextNodeIndex() + i < this.path.getNodeCount()) {
            Node currentTarget = this.path.getNode(this.path.getNextNodeIndex() + i);
            double dx = Math.abs(currentTarget.x + (int)(this.mob.getBbWidth() + 1.0F) * 0.5F - this.mob.getX());
            double dy = Math.abs(currentTarget.y - this.mob.getY());
            double dz = Math.abs(currentTarget.z + (int)(this.mob.getBbWidth() + 1.0F) * 0.5F - this.mob.getZ());
            boolean isWaypointInReach = dx < this.maxDistanceToWaypoint && dy < maxDistanceToWaypointY && dz < this.maxDistanceToWaypoint;
            boolean isOnSameSideAsTarget = false;
            if (!this.canFloat() || currentTarget.type != PathType.WATER && currentTarget.type != PathType.WATER_BORDER && currentTarget.type != PathType.LAVA) {
               if (currentTarget instanceof DirectionalPathPoint directionalPoint) {
                  Direction targetSide = directionalPoint.getPathSide();
                  isOnSameSideAsTarget = targetSide == null || this.climber.getGroundDirection().getLeft() == targetSide;
               } else {
                  isOnSameSideAsTarget = true;
               }
            } else {
               isOnSameSideAsTarget = true;
            }

            if (isOnSameSideAsTarget
               && (
                  isWaypointInReach
                     || i == 0
                        && this.mob.getNavigation().canCutCorner(this.path.getNextNode().type)
                        && this.isNextTargetInLine(pos, sizeX, sizeY, sizeZ, 1 + i)
               )) {
               this.path.setNextNodeIndex(this.path.getNextNodeIndex() + 1 + i);
               break;
            }
         }
      }

      this.doStuckDetection(pos);
   }

   private boolean isNextTargetInLine(Vec3 pos, int sizeX, int sizeY, int sizeZ, int offset) {
      if (this.path.getNextNodeIndex() + offset >= this.path.getNodeCount()) {
         return false;
      }

      Vec3 currentTarget = Vec3.atBottomCenterOf(this.path.getNextNodePos());
      if (!pos.closerThan(currentTarget, 2.0)) {
         return false;
      }

      Vec3 nextTarget = Vec3.atBottomCenterOf(this.path.getNodePos(this.path.getNextNodeIndex() + offset));
      Vec3 targetDir = nextTarget.subtract(currentTarget);
      Vec3 currentDir = pos.subtract(currentTarget);
      return targetDir.dot(currentDir) > 0.0;
   }

   protected boolean canMoveDirectly(Vec3 start, Vec3 end) {
      return switch (this.verticalFacing.getAxis()) {
         case X -> this.isDirectPathBetweenPoints(start, end, Axis.Z, Axis.X, Axis.Y, this.verticalFacing.getStepX() < 0);
         case Y -> this.isDirectPathBetweenPoints(start, end, Axis.X, Axis.Y, Axis.Z, this.verticalFacing.getStepY() < 0);
         case Z -> this.isDirectPathBetweenPoints(start, end, Axis.Y, Axis.Z, Axis.X, this.verticalFacing.getStepZ() < 0);
         default -> throw new MatchException(null, null);
      };
   }

   protected boolean isDirectPathBetweenPoints(Vec3 start, Vec3 end, Axis ax, Axis ay, Axis az, boolean invertY) {
      int bx = Mth.floor(swizzle(start, ax));
      int bz = Mth.floor(swizzle(start, az));
      double dx = swizzle(end, ax) - swizzle(start, ax);
      double dz = swizzle(end, az) - swizzle(start, az);
      double dSq = dx * dx + dz * dz;
      return !(dSq < 1.0E-8);
   }

   protected static double swizzle(Vec3 vec, Axis axis) {
      return switch (axis) {
         case X -> vec.x;
         case Y -> vec.y;
         case Z -> vec.z;
         default -> throw new MatchException(null, null);
      };
   }
}
