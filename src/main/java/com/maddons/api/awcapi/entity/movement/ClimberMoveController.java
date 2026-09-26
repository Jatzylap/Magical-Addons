package com.maddons.api.awcapi.entity.movement;

import com.maddons.api.awcapi.entity.IAdvancedClimber;
import com.maddons.api.awcapi.entity.Orientation;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.core.Direction.Axis;
import net.minecraft.util.Mth;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.entity.ai.control.MoveControl;
import net.minecraft.world.entity.ai.navigation.PathNavigation;
import net.minecraft.world.level.pathfinder.NodeEvaluator;
import net.minecraft.world.level.pathfinder.PathType;
import net.minecraft.world.level.pathfinder.PathfindingContext;
import net.minecraft.world.phys.AABB;
import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.shapes.VoxelShape;
import org.jetbrains.annotations.Nullable;

public class ClimberMoveController<T extends Mob & IAdvancedClimber> extends MoveControl<T> {
   protected final IAdvancedClimber climber;
   @Nullable
   protected BlockPos block;
   @Nullable
   protected Direction side;

   public ClimberMoveController(T entity) {
      super(entity);
      this.climber = entity;
   }

   public void setWantedPosition(double x, double y, double z, double speedIn) {
      this.setMoveTo(x, y, z, null, null, speedIn);
   }

   public void setMoveTo(double x, double y, double z, BlockPos block, Direction side, double speedIn) {
      super.setWantedPosition(x, y, z, speedIn);
      this.block = block;
      this.side = side;
   }

   public void tick() {
      double speed = this.climber.getMovementSpeed() * this.speedModifier;
      if (this.operation == Operation.STRAFE) {
         this.operation = Operation.WAIT;
         float forward = this.strafeForwards;
         float strafe = this.strafeRight;
         float moveSpeed = Mth.sqrt(forward * forward + strafe * strafe);
         if (moveSpeed < 1.0F) {
            moveSpeed = 1.0F;
         }

         moveSpeed = (float)speed / moveSpeed;
         forward *= moveSpeed;
         strafe *= moveSpeed;
         Orientation orientation = this.climber.getOrientation();
         Vec3 forwardVector = orientation.getGlobal(this.mob.getYRot(), 0.0F);
         Vec3 strafeVector = orientation.getGlobal(this.mob.getYRot() + 90.0F, 0.0F);
         if (!this.isWalkableAtOffset(
            forwardVector.x * forward + strafeVector.x * strafe,
            forwardVector.y * forward + strafeVector.y * strafe,
            forwardVector.z * forward + strafeVector.z * strafe
         )) {
            this.strafeForwards = 1.0F;
            this.strafeRight = 0.0F;
         }

         this.mob.setSpeed((float)speed);
         this.mob.setZza(this.strafeForwards);
         this.mob.setXxa(this.strafeRight);
      } else if (this.operation == Operation.MOVE_TO) {
         this.operation = Operation.WAIT;
         double dx = this.wantedX - this.mob.getX();
         double dy = this.wantedY - this.mob.getY();
         double dz = this.wantedZ - this.mob.getZ();
         if (this.side != null && this.block != null) {
            VoxelShape shape = this.mob.level().getBlockState(this.block).getCollisionShape(this.mob.level(), this.block);
            AABB aabb = this.mob.getBoundingBox();
            double ox = 0.0;
            double oy = 0.0;
            double oz = 0.0;
            switch (this.side) {
               case DOWN:
                  if (aabb.minY >= this.block.getY() + shape.max(Axis.Y) - 0.01) {
                     ox -= 0.1;
                  }
                  break;
               case UP:
                  if (aabb.maxY <= this.block.getY() + shape.min(Axis.Y) + 0.01) {
                     oy += 0.1;
                  }
                  break;
               case WEST:
                  if (aabb.minX >= this.block.getX() + shape.max(Axis.X) - 0.01) {
                     ox -= 0.1;
                  }
                  break;
               case EAST:
                  if (aabb.maxX <= this.block.getX() + shape.min(Axis.X) + 0.01) {
                     ox += 0.1;
                  }
                  break;
               case NORTH:
                  if (aabb.minZ >= this.block.getZ() + shape.max(Axis.Z) - 0.01) {
                     oz -= 0.1;
                  }
                  break;
               case SOUTH:
                  if (aabb.maxZ <= this.block.getZ() + shape.min(Axis.Z) + 0.01) {
                     oz += 0.1;
                  }
            }

            AABB blockAabb = new AABB(this.block.relative(this.side.getOpposite()));
            if (aabb.intersects(blockAabb)) {
               Axis offsetAxis = this.side.getAxis();

               double allowedOffset = shape.collide(offsetAxis, aabb.move(-this.block.getX(), -this.block.getY(), -this.block.getZ()), switch (offsetAxis) {
                  default -> this.side.getStepX() * 0.5F;
                  case Y -> this.side.getStepY() * 0.5F;
                  case Z -> this.side.getStepZ() * 0.5F;
               });
               switch (this.side) {
                  case DOWN:
                     if (aabb.minY + allowedOffset < this.block.getY() + shape.max(Axis.Y) - 0.01) {
                        oy = 0.0;
                     }
                     break;
                  case UP:
                     if (aabb.maxY + allowedOffset > this.block.getY() + shape.min(Axis.Y) + 0.01) {
                        oy = 0.0;
                     }
                     break;
                  case WEST:
                     if (aabb.minX + allowedOffset < this.block.getX() + shape.max(Axis.X) - 0.01) {
                        ox = 0.0;
                     }
                     break;
                  case EAST:
                     if (aabb.maxX + allowedOffset > this.block.getX() + shape.min(Axis.X) + 0.01) {
                        ox = 0.0;
                     }
                     break;
                  case NORTH:
                     if (aabb.minZ + allowedOffset < this.block.getZ() + shape.max(Axis.Z) - 0.01) {
                        oz = 0.0;
                     }
                     break;
                  case SOUTH:
                     if (aabb.maxZ + allowedOffset > this.block.getZ() + shape.min(Axis.Z) + 0.01) {
                        oz = 0.0;
                     }
               }
            }

            dx += ox;
            dy += oy;
            dz += oz;
         }

         Direction mainOffsetDir = Direction.getApproximateNearest(dx, dy, dz);

         float var30 = switch (mainOffsetDir) {
            case DOWN -> 0.0F;
            case UP -> this.mob.getBbHeight();
            default -> this.mob.getBbWidth() * 0.5F;
         };
         double verticalOffset = Math.abs(mainOffsetDir.getStepX() * dx) + Math.abs(mainOffsetDir.getStepY() * dy) + Math.abs(mainOffsetDir.getStepZ() * dz);
         Direction groundDir = (Direction)this.climber.getGroundDirection().getLeft();
         Vec3 jumpDir = null;
         if (this.side != null && verticalOffset > var30 - 0.05F && groundDir != this.side && groundDir.getAxis() != this.side.getAxis()) {
            double hdx = (1 - Math.abs(mainOffsetDir.getStepX())) * dx;
            double hdy = (1 - Math.abs(mainOffsetDir.getStepY())) * dy;
            double hdz = (1 - Math.abs(mainOffsetDir.getStepZ())) * dz;
            double hdsq = hdx * hdx + hdy * hdy + hdz * hdz;
            if (hdsq < 0.707F) {
               dx -= this.side.getStepX() * 0.2F;
               dy -= this.side.getStepY() * 0.2F;
               dz -= this.side.getStepZ() * 0.2F;
               if (hdsq < 0.1F) {
                  jumpDir = new Vec3(mainOffsetDir.getStepX(), mainOffsetDir.getStepY(), mainOffsetDir.getStepZ());
               }
            }
         }

         Orientation orientation = this.climber.getOrientation();
         Vec3 up = orientation.getGlobal(this.mob.getYRot(), -90.0F);
         Vec3 offset = new Vec3(dx, dy, dz);
         Vec3 targetDir = offset.subtract(up.scale(offset.dot(up)));
         double targetDist = targetDir.length();
         targetDir = targetDir.normalize();
         if (targetDist < 1.0E-4) {
            this.mob.setZza(0.0F);
         } else {
            float rx = (float)orientation.localZ.dot(targetDir);
            float ry = (float)orientation.localX.dot(targetDir);
            this.mob.setYRot(this.rotlerp(this.mob.getYRot(), 270.0F - (float)Math.toDegrees(Mth.atan2(rx, ry)), 90.0F));
            if (jumpDir == null && this.side != null && targetDist < 0.1 && groundDir == this.side.getOpposite()) {
               jumpDir = new Vec3(this.side.getStepX(), this.side.getStepY(), this.side.getStepZ());
            }

            if (jumpDir != null) {
               this.mob.setSpeed((float)speed * 0.5F);
               if (this.mob.getJumpControl() instanceof ClimberJumpController) {
                  ((ClimberJumpController<?>)this.mob.getJumpControl()).setJumping(jumpDir);
               }
            } else {
               this.mob.setSpeed((float)speed);
            }
         }
      } else if (this.operation == Operation.JUMPING) {
         this.mob.setSpeed((float)speed);
         if (this.mob.onGround()) {
            this.operation = Operation.WAIT;
         }
      } else {
         this.mob.setZza(0.0F);
      }
   }

   private boolean isWalkableAtOffset(double x, double y, double z) {
      PathNavigation navigator = this.mob.getNavigation();
      if (navigator != null) {
         NodeEvaluator processor = navigator.getNodeEvaluator();
         if (processor != null
            && processor.getPathType(
                  new PathfindingContext(this.mob.level(), this.mob),
                  Mth.floor(this.mob.getX() + x),
                  Mth.floor(this.mob.getY() + this.mob.getBbHeight() * 0.5F + y),
                  Mth.floor(this.mob.getZ() + z)
               )
               != PathType.WALKABLE) {
            return false;
         }
      }

      return true;
   }
}
