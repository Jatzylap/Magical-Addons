package com.maddons.api.awcapi.entity.movement;

import java.util.function.Predicate;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.core.Vec3i;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.level.pathfinder.Node;
import net.minecraft.world.level.pathfinder.PathType;
import org.jetbrains.annotations.Nullable;

public interface IAdvancedPathFindingEntity {
   default Direction getGroundSide() {
      return Direction.DOWN;
   }

   default void onPathingObstructed(Direction facing) {
   }

   default int getMaxStuckCheckTicks() {
      return 40;
   }

   default float getBridgePathingMalus(Mob entity, BlockPos pos, @Nullable Node fallPathPoint) {
      return -1.0F;
   }

   default float getPathingMalus(BlockGetter cache, Mob entity, PathType nodeType, BlockPos pos, Vec3i direction, Predicate<Direction> sides) {
      return entity.getPathfindingMalus(nodeType);
   }

   default void pathFinderCleanup() {
   }
}
