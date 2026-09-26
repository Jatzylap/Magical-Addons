package com.maddons.api.awcapi.entity.movement;

import com.maddons.api.awcapi.entity.IAdvancedClimber;
import java.util.HashSet;
import java.util.Set;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.util.Mth;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.entity.ai.navigation.GroundPathNavigation;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.pathfinder.Path;
import net.minecraft.world.level.pathfinder.PathComputationType;
import net.minecraft.world.level.pathfinder.PathFinder;
import net.minecraft.world.level.pathfinder.PathType;
import net.minecraft.world.phys.AABB;
import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.shapes.CollisionContext;
import net.minecraft.world.phys.shapes.VoxelShape;
import org.jetbrains.annotations.Nullable;

public class AdvancedGroundPathNavigator<T extends Mob & IAdvancedClimber> extends GroundPathNavigation {
   protected AdvancedPathFinder pathFinder;
   protected long lastTimeUpdated;
   protected BlockPos targetPos;
   protected final T advancedPathFindingEntity;
   protected final boolean checkObstructions;
   protected int stuckCheckTicks = 0;
   protected int checkpointRange;

   public AdvancedGroundPathNavigator(T entity, Level worldIn) {
      this(entity, worldIn, true);
   }

   public AdvancedGroundPathNavigator(T entity, Level worldIn, boolean checkObstructions) {
      super(entity, worldIn);
      this.advancedPathFindingEntity = entity;
      this.checkObstructions = checkObstructions;
      if (this.nodeEvaluator instanceof AdvancedWalkNodeProcessor processor) {
         processor.setCheckObstructions(checkObstructions);
      }
   }

   public AdvancedPathFinder getAssignedPathFinder() {
      return this.pathFinder;
   }

   protected final PathFinder createPathFinder(int maxExpansions) {
      this.pathFinder = this.createAdvancedPathFinder(maxExpansions);
      this.nodeEvaluator = this.pathFinder.getNodeProcessor();
      return this.pathFinder;
   }

   protected AdvancedPathFinder createAdvancedPathFinder(int maxExpansions) {
      AdvancedWalkNodeProcessor nodeProcessor = new AdvancedWalkNodeProcessor();
      nodeProcessor.setCanPassDoors(true);
      return new AdvancedPathFinder(nodeProcessor, maxExpansions);
   }

   @Nullable
   protected Path createPath(Set<BlockPos> waypoints, int padding, boolean startAbove, int checkpointRange) {
      Set<BlockPos> adjustedWaypoints = new HashSet<>();

      for (BlockPos pos : waypoints) {
         adjustedWaypoints.add(pos.offset(-Mth.ceil(this.mob.getBbWidth()) + 1, -Mth.ceil(this.mob.getBbHeight()) + 1, -Mth.ceil(this.mob.getBbWidth()) + 1));
      }

      Path path = super.createPath(adjustedWaypoints, padding, startAbove, checkpointRange);
      if (path != null && path.getTarget() != null) {
         this.checkpointRange = checkpointRange;
      }

      return path;
   }

   public void recomputePath() {
      if (this.level.getGameTime() - this.lastTimeUpdated > 20L) {
         if (this.targetPos != null) {
            this.path = null;
            this.path = this.createPath(this.targetPos, this.checkpointRange);
            this.lastTimeUpdated = this.level.getGameTime();
            this.hasDelayedRecomputation = false;
         }
      } else {
         this.hasDelayedRecomputation = true;
      }
   }

   protected void doStuckDetection(Vec3 entityPos) {
      super.doStuckDetection(entityPos);
      if (this.checkObstructions && this.path != null && !this.path.isDone()) {
         Vec3 target = this.path.getEntityPosAtNode(this.advancedPathFindingEntity, Math.min(this.path.getNodeCount() - 1, this.path.getNextNodeIndex() + 0));
         Vec3 diff = target.subtract(entityPos);
         int axis = 0;
         double maxDiff = 0.0;

         for (int i = 0; i < 3; i++) {
            double d = switch (i) {
               case 0 -> Math.abs(diff.x);
               case 1 -> Math.abs(diff.y);
               default -> Math.abs(diff.z);
            };
            if (d > maxDiff) {
               axis = i;
               maxDiff = d;
            }
         }

         int height = Mth.floor(this.advancedPathFindingEntity.getBbHeight() + 1.0F);
         int ceilHalfWidth = Mth.ceil(this.advancedPathFindingEntity.getBbWidth() / 2.0F + 0.05F);

         Vec3 checkPos = switch (axis) {
            case 0 -> new Vec3(entityPos.x + Math.signum(diff.x) * ceilHalfWidth, entityPos.y, target.z);
            case 1 -> new Vec3(entityPos.x, entityPos.y + (diff.y > 0.0 ? height + 1 : -1), target.z);
            default -> new Vec3(target.x, entityPos.y, entityPos.z + Math.signum(diff.z) * ceilHalfWidth);
         };
         Vec3 facingDiff = checkPos.subtract(entityPos.add(0.0, axis == 1 ? this.mob.getBbHeight() / 2.0F : 0.0, 0.0));
         Direction facing = Direction.getApproximateNearest((float)facingDiff.x, (float)facingDiff.y, (float)facingDiff.z);
         boolean blocked = false;
         AABB checkBox = this.advancedPathFindingEntity
            .getBoundingBox()
            .expandTowards(Math.signum(diff.x) * 0.2, Math.signum(diff.y) * 0.2, Math.signum(diff.z) * 0.2);

         label88:
         for (int yo = 0; yo < height; yo++) {
            for (int xzo = -ceilHalfWidth; xzo <= ceilHalfWidth; xzo++) {
               BlockPos pos = BlockPos.containing(checkPos.x + (axis != 0 ? xzo : 0), checkPos.y + (axis != 1 ? yo : 0), checkPos.z + (axis != 2 ? xzo : 0));
               BlockState state = this.advancedPathFindingEntity.level().getBlockState(pos);
               PathType nodeType = state.isPathfindable(PathComputationType.LAND) ? PathType.OPEN : PathType.BLOCKED;
               if (nodeType == PathType.BLOCKED) {
                  VoxelShape collisionShape = state.getShape(this.advancedPathFindingEntity.level(), pos, CollisionContext.of(this.advancedPathFindingEntity))
                     .move(pos.getX(), pos.getY(), pos.getZ());
                  if (collisionShape != null && collisionShape.toAabbs().stream().anyMatch(aabb -> aabb.intersects(checkBox))) {
                     blocked = true;
                     break label88;
                  }
               }
            }
         }

         if (blocked) {
            this.stuckCheckTicks++;
            if (this.stuckCheckTicks > this.advancedPathFindingEntity.getMaxStuckCheckTicks()) {
               this.advancedPathFindingEntity.onPathingObstructed(facing);
               this.stuckCheckTicks = 0;
            }
         } else {
            this.stuckCheckTicks = Math.max(this.stuckCheckTicks - 2, 0);
         }
      } else {
         this.stuckCheckTicks = Math.max(this.stuckCheckTicks - 4, 0);
      }
   }
}
