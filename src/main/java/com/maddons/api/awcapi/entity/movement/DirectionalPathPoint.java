package com.maddons.api.awcapi.entity.movement;

import java.util.EnumSet;
import net.minecraft.core.Direction;
import net.minecraft.world.level.pathfinder.Node;
import org.jetbrains.annotations.Nullable;

public class DirectionalPathPoint extends Node {
   protected static final long ALL_DIRECTIONS = AdvancedWalkNodeProcessor.packDirection(
      Direction.UP,
      AdvancedWalkNodeProcessor.packDirection(
         Direction.DOWN,
         AdvancedWalkNodeProcessor.packDirection(
            Direction.NORTH,
            AdvancedWalkNodeProcessor.packDirection(
               Direction.EAST, AdvancedWalkNodeProcessor.packDirection(Direction.SOUTH, AdvancedWalkNodeProcessor.packDirection(Direction.WEST, 0L))
            )
         )
      )
   );
   protected static final Direction[] DIRECTIONS = Direction.values();
   private final Direction[] pathableSides;
   private final Direction pathSide;
   private final boolean isDrop;

   public DirectionalPathPoint(int x, int y, int z, long packed, boolean isDrop) {
      super(x, y, z);
      EnumSet<Direction> directionsSet = EnumSet.noneOf(Direction.class);

      for (int i = 0; i < DIRECTIONS.length; i++) {
         Direction dir = DIRECTIONS[i];
         if (AdvancedWalkNodeProcessor.unpackDirection(dir, packed)) {
            directionsSet.add(dir);
         }
      }

      this.pathableSides = directionsSet.toArray(new Direction[0]);
      this.pathSide = null;
      this.isDrop = isDrop;
   }

   public DirectionalPathPoint(Node point, long packed, boolean isDrop) {
      this(point.x, point.y, point.z, packed, isDrop);
      this.heapIdx = point.heapIdx;
      this.g = point.g;
      this.h = point.h;
      this.f = point.f;
      this.cameFrom = point.cameFrom;
      this.closed = point.closed;
      this.walkedDistance = point.walkedDistance;
      this.costMalus = point.costMalus;
      this.type = point.type;
   }

   public DirectionalPathPoint(Node point) {
      this(point, ALL_DIRECTIONS, false);
   }

   private DirectionalPathPoint(int x, int y, int z, Direction[] pathableSides, Direction pathSide, boolean isDrop) {
      super(x, y, z);
      this.pathableSides = new Direction[pathableSides.length];
      System.arraycopy(pathableSides, 0, this.pathableSides, 0, pathableSides.length);
      this.pathSide = pathSide;
      this.isDrop = isDrop;
   }

   public DirectionalPathPoint(Node point, Direction pathSide) {
      super(point.x, point.y, point.z);
      this.heapIdx = point.heapIdx;
      this.g = point.g;
      this.h = point.h;
      this.f = point.f;
      this.cameFrom = point.cameFrom;
      this.closed = point.closed;
      this.walkedDistance = point.walkedDistance;
      this.costMalus = point.costMalus;
      this.type = point.type;
      if (point instanceof DirectionalPathPoint other) {
         this.pathableSides = new Direction[other.pathableSides.length];
         System.arraycopy(other.pathableSides, 0, this.pathableSides, 0, other.pathableSides.length);
         this.isDrop = other.isDrop;
      } else {
         this.pathableSides = Direction.values();
         this.isDrop = false;
      }

      this.pathSide = pathSide;
   }

   public DirectionalPathPoint assignPathSide(Direction pathDirection) {
      return new DirectionalPathPoint(this, pathDirection);
   }

   public Node cloneAndMove(int x, int y, int z) {
      Node pathPoint = new DirectionalPathPoint(x, y, z, this.pathableSides, this.pathSide, this.isDrop);
      pathPoint.heapIdx = this.heapIdx;
      pathPoint.g = this.g;
      pathPoint.h = this.h;
      pathPoint.f = this.f;
      pathPoint.cameFrom = this.cameFrom;
      pathPoint.closed = this.closed;
      pathPoint.walkedDistance = this.walkedDistance;
      pathPoint.costMalus = this.costMalus;
      pathPoint.type = this.type;
      return pathPoint;
   }

   public Direction[] getPathableSides() {
      return this.pathableSides;
   }

   @Nullable
   public Direction getPathSide() {
      return this.pathSide;
   }

   public boolean isDrop() {
      return this.isDrop;
   }
}
