package com.maddons.api.awcapi.entity;

import com.maddons.Maddons;
import com.maddons.api.awcapi.util.CollisionSmoothingUtil;
import com.maddons.api.awcapi.util.Matrix4f;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.core.Direction.Axis;
import net.minecraft.tags.BlockTags;
import net.minecraft.util.Mth;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.entity.MoverType;
import net.minecraft.world.entity.ai.attributes.AttributeInstance;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.level.CollisionGetter;
import net.minecraft.world.level.block.FenceGateBlock;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.border.WorldBorder;
import net.minecraft.world.level.material.FluidState;
import net.minecraft.world.level.pathfinder.Node;
import net.minecraft.world.level.pathfinder.Path;
import net.minecraft.world.level.storage.ValueInput;
import net.minecraft.world.level.storage.ValueOutput;
import net.minecraft.world.phys.AABB;
import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.shapes.VoxelShape;
import net.minecraft.world.phys.shapes.Shapes.DoubleLineConsumer;
import org.apache.commons.lang3.tuple.Pair;
import org.jetbrains.annotations.Nullable;

public class ClimberComponent {
   private final Mob mob;
   private final IAdvancedClimber climber;
   private double prevAttachmentOffsetX;
   private double prevAttachmentOffsetY;
   private double prevAttachmentOffsetZ;
   private double attachmentOffsetX;
   private double attachmentOffsetY;
   private double attachmentOffsetZ;
   private Vec3 attachmentNormal = new Vec3(0.0, 1.0, 0.0);
   private Vec3 prevAttachmentNormal = new Vec3(0.0, 1.0, 0.0);
   private float orientationYawDelta;
   private double lastAttachmentOffsetX;
   private double lastAttachmentOffsetY;
   private double lastAttachmentOffsetZ;
   private Vec3 lastAttachmentOrientationNormal = new Vec3(0.0, 1.0, 0.0);
   private int attachedTicks = 5;
   private Vec3 attachedSides = new Vec3(0.0, 0.0, 0.0);
   private Vec3 prevAttachedSides = new Vec3(0.0, 0.0, 0.0);
   private boolean canClimbInWater = false;
   private boolean canClimbInLava = false;
   private boolean isTravelingInFluid = false;
   private float collisionsInclusionRange = 2.0F;
   private float collisionsSmoothingRange = 1.25F;
   private Orientation orientation;
   private Pair<Direction, Vec3> groundDirection = Pair.of(Direction.DOWN, new Vec3(0.0, -1.0, 0.0));
   private Orientation renderOrientation;
   private Vec3 preWalkingPosition;
   private double preMoveY;
   private Vec3 jumpDir;
   private float movementTargetX;
   private float movementTargetY;
   private float movementTargetZ;
   private final List<Direction> pathingSides = new ArrayList<>(
      List.of(Direction.DOWN, Direction.DOWN, Direction.DOWN, Direction.DOWN, Direction.DOWN, Direction.DOWN, Direction.DOWN, Direction.DOWN)
   );
   private final List<Optional<BlockPos>> pathingTargets = new ArrayList<>(
      List.of(Optional.empty(), Optional.empty(), Optional.empty(), Optional.empty(), Optional.empty(), Optional.empty(), Optional.empty(), Optional.empty())
   );

   public ClimberComponent(Mob mob) {
      this.mob = mob;
      if (!(mob instanceof IAdvancedClimber)) {
         throw new IllegalArgumentException("Mob must implement IAdvancedClimber");
      }

      this.climber = (IAdvancedClimber)mob;
      this.orientation = this.calculateOrientation(1.0F);
      this.groundDirection = this.getGroundDirection();
   }

   public void writeToNbt(ValueOutput nbt) {
      nbt.putDouble("awcapiAttachmentNormalX", this.attachmentNormal.x);
      nbt.putDouble("awcapiAttachmentNormalY", this.attachmentNormal.y);
      nbt.putDouble("awcapiAttachmentNormalZ", this.attachmentNormal.z);
      nbt.putInt("awcapiAttachedTicks", this.attachedTicks);
   }

   public void readFromNbt(ValueInput nbt) {
      this.prevAttachmentNormal = this.attachmentNormal = new Vec3(
         nbt.getDoubleOr("awcapiAttachmentNormalX", 0.0), nbt.getDoubleOr("awcapiAttachmentNormalY", 0.0), nbt.getDoubleOr("awcapiAttachmentNormalZ", 0.0)
      );
      this.attachedTicks = nbt.getIntOr("awcapiAttachedTicks", 0);
      this.orientation = this.calculateOrientation(1.0F);
   }

   public boolean canClimbInWater() {
      return this.canClimbInWater;
   }

   public void setCanClimbInWater(boolean value) {
      this.canClimbInWater = value;
   }

   public boolean canClimbInLava() {
      return this.canClimbInLava;
   }

   public void setCanClimbInLava(boolean value) {
      this.canClimbInLava = value;
   }

   public float getCollisionsInclusionRange() {
      return this.collisionsInclusionRange;
   }

   public void setCollisionsInclusionRange(float range) {
      this.collisionsInclusionRange = range;
   }

   public float getCollisionsSmoothingRange() {
      return this.collisionsSmoothingRange;
   }

   public void setCollisionsSmoothingRange(float range) {
      this.collisionsSmoothingRange = range;
   }

   public float getMovementSpeed() {
      AttributeInstance attribute = this.mob.getAttribute(Attributes.MOVEMENT_SPEED);
      return attribute != null ? (float)attribute.getValue() : 1.0F;
   }

   public Pair<Direction, Vec3> getGroundDirection() {
      return this.groundDirection;
   }

   public Direction getGroundSide() {
      return (Direction)this.groundDirection.getKey();
   }

   public Orientation getOrientation() {
      return this.orientation;
   }

   public void setRenderOrientation(Orientation orientation) {
      this.renderOrientation = orientation;
   }

   public Orientation getRenderOrientation() {
      return this.renderOrientation;
   }

   public boolean isClimbing() {
      return this.attachedTicks > 0 && Math.abs(1.0 - this.attachmentNormal.y) > 1.0E-4;
   }

   public float getAttachmentOffset(Axis axis, float partialTicks) {
      return switch (axis) {
         case X -> (float)(this.prevAttachmentOffsetX + (this.attachmentOffsetX - this.prevAttachmentOffsetX) * partialTicks);
         case Y -> (float)(this.prevAttachmentOffsetY + (this.attachmentOffsetY - this.prevAttachmentOffsetY) * partialTicks);
         case Z -> (float)(this.prevAttachmentOffsetZ + (this.attachmentOffsetZ - this.prevAttachmentOffsetZ) * partialTicks);
         default -> throw new MatchException(null, null);
      };
   }

   public void setJumpDirection(@Nullable Vec3 dir) {
      this.jumpDir = dir != null ? dir.normalize() : null;
   }

   public Vec3 getJumpDirection() {
      return this.jumpDir;
   }

   public Vec3 getAttachmentNormal() {
      return this.attachmentNormal;
   }

   @Nullable
   public Vec3 getTrackedMovementTarget() {
      return this.climber.shouldTrackPathingTargets() ? new Vec3(this.movementTargetX, this.movementTargetY, this.movementTargetZ) : null;
   }

   @Nullable
   public List<PathingTarget> getTrackedPathingTargets() {
      if (this.climber.shouldTrackPathingTargets()) {
         List<PathingTarget> targets = new ArrayList<>(this.pathingTargets.size());
         int i = 0;

         for (Optional<BlockPos> key : this.pathingTargets) {
            BlockPos pos = key.orElse(null);
            if (pos != null) {
               targets.add(new PathingTarget(pos, this.pathingSides.get(i)));
            }

            i++;
         }

         return targets;
      } else {
         return null;
      }
   }

   public void tick() {
      if (!this.mob.level().isClientSide()) {
         Orientation orientation = this.getOrientation();
         if (this.climber.shouldTrackPathingTargets()) {
            if (this.mob.xxa != 0.0F) {
               Vec3 forwardVector = orientation.getGlobal(this.mob.getYRot(), 0.0F);
               Vec3 strafeVector = orientation.getGlobal(this.mob.getYRot() + 90.0F, 0.0F);
               Vec3 offset = forwardVector.scale(this.mob.zza).add(strafeVector.scale(this.mob.xxa)).normalize();
               this.movementTargetX = (float)(this.mob.getX() + offset.x);
               this.movementTargetY = (float)(this.mob.getY() + this.mob.getBbHeight() * 0.5F + offset.y);
               this.movementTargetZ = (float)(this.mob.getZ() + offset.z);
            } else {
               this.movementTargetX = (float)this.mob.getMoveControl().getWantedX();
               this.movementTargetY = (float)this.mob.getMoveControl().getWantedY();
               this.movementTargetZ = (float)this.mob.getMoveControl().getWantedZ();
            }

            Path path = this.mob.getNavigation().getPath();
            if (path != null) {
               for (int i = 0; i < this.pathingTargets.size(); i++) {
                  if (path.getNextNodeIndex() + i < path.getNodeCount()) {
                     Node point = path.getNode(path.getNextNodeIndex() + i);
                     this.pathingTargets.set(i, Optional.of(new BlockPos(point.x, point.y, point.z)));
                  } else {
                     this.pathingTargets.set(i, Optional.empty());
                     this.pathingSides.set(i, Direction.DOWN);
                  }
               }
            } else {
               for (int i = 0; i < this.pathingTargets.size(); i++) {
                  this.pathingTargets.set(i, Optional.empty());
               }

               for (int i = 0; i < this.pathingSides.size(); i++) {
                  this.pathingSides.set(i, Direction.DOWN);
               }
            }
         }
      }
   }

   public void livingTick() {
      this.updateWalkingSide();
      this.updateOffsetsAndOrientation();
   }

   private void updateWalkingSide() {
      AABB entityBox = this.mob.getBoundingBox();
      double closestFacingDst = Double.MAX_VALUE;
      Direction closestFacing = null;
      Vec3 weighting = new Vec3(0.0, 0.0, 0.0);
      float stickingDistance = this.mob.zza != 0.0F ? 1.5F : 0.1F;

      for (Direction facing : Direction.values()) {
         List<AABB> collisionBoxes = this.getCollisionBoxes(
            entityBox.inflate(0.2F)
               .expandTowards(facing.getStepX() * stickingDistance, facing.getStepY() * stickingDistance, facing.getStepZ() * stickingDistance)
         );
         double closestDst = Double.MAX_VALUE;

         for (AABB collisionBox : collisionBoxes) {
            switch (facing) {
               case EAST:
               case WEST:
                  closestDst = Math.min(closestDst, Math.abs(calculateXOffset(entityBox, collisionBox, -facing.getStepX() * stickingDistance)));
                  break;
               case UP:
               case DOWN:
                  closestDst = Math.min(closestDst, Math.abs(calculateYOffset(entityBox, collisionBox, -facing.getStepY() * stickingDistance)));
                  break;
               case NORTH:
               case SOUTH:
                  closestDst = Math.min(closestDst, Math.abs(calculateZOffset(entityBox, collisionBox, -facing.getStepZ() * stickingDistance)));
            }
         }

         if (closestDst < closestFacingDst) {
            closestFacingDst = closestDst;
            closestFacing = facing;
         }

         if (closestDst < Double.MAX_VALUE) {
            weighting = weighting.add(
               new Vec3(facing.getStepX(), facing.getStepY(), facing.getStepZ()).scale(1.0 - Math.min(closestDst, stickingDistance) / stickingDistance)
            );
         }
      }

      if (closestFacing == null) {
         this.groundDirection = Pair.of(Direction.DOWN, new Vec3(0.0, -1.0, 0.0));
      } else {
         this.groundDirection = Pair.of(closestFacing, weighting.normalize().add(0.0, -0.001F, 0.0).normalize());
      }
   }

   public boolean onTravel(Vec3 relative, boolean pre) {
      if (!pre) {
         this.updateOffsetsAndOrientation();
         return false;
      }

      boolean canTravel = this.mob.isEffectiveAi() || this.mob.isLocalInstanceAuthoritative();
      this.isTravelingInFluid = false;
      FluidState fluidState = this.mob.level().getFluidState(this.mob.blockPosition());
      if (!this.canClimbInWater && this.mob.isInWater() && !this.mob.canStandOnFluid(fluidState)) {
         this.isTravelingInFluid = true;
         if (canTravel) {
            return false;
         }
      } else if (!this.canClimbInLava && this.mob.isInLava() && !this.mob.canStandOnFluid(fluidState)) {
         this.isTravelingInFluid = true;
         if (canTravel) {
            return false;
         }
      } else if (canTravel) {
         this.travelOnGround(relative);
      }

      if (!canTravel) {
         this.mob.calculateEntityAnimation(true);
      }

      this.updateOffsetsAndOrientation();
      return true;
   }

   private void travelOnGround(Vec3 relative) {
      Orientation orientation = this.getOrientation();
      Vec3 forwardVector = orientation.getGlobal(this.mob.getYRot(), 0.0F);
      Vec3 strafeVector = orientation.getGlobal(this.mob.getYRot() + 90.0F, 0.0F);
      Vec3 upVector = orientation.getGlobal(this.mob.getYRot(), -90.0F);
      Pair<Direction, Vec3> groundDirection = this.getGroundDirection();
      Vec3 stickingForce = this.getStickingForce(groundDirection);
      boolean isFalling = this.mob.getDeltaMovement().y <= 0.0;
      if (isFalling && this.mob.hasEffect(MobEffects.SLOW_FALLING)) {
         this.mob.fallDistance = 0.0;
      }

      float forward = (float)relative.z;
      float strafe = (float)relative.x;
      if (forward != 0.0F || strafe != 0.0F) {
         float slipperiness = 0.91F;
         if (this.mob.onGround()) {
            BlockPos offsetPos = new BlockPos(this.mob.blockPosition()).relative((Direction)groundDirection.getLeft());
            slipperiness = this.climber.getBlockSlipperiness(offsetPos);
         }

         float f = forward * forward + strafe * strafe;
         if (f >= 1.0E-4F) {
            f = Math.max(Mth.sqrt(f), 1.0F);
            f = this.getRelevantMoveFactor(slipperiness) / f;
            forward *= f;
            strafe *= f;
            Vec3 movementOffset = new Vec3(
               forwardVector.x * forward + strafeVector.x * strafe,
               forwardVector.y * forward + strafeVector.y * strafe,
               forwardVector.z * forward + strafeVector.z * strafe
            );
            double px = this.mob.getX();
            double py = this.mob.getY();
            double pz = this.mob.getZ();
            Vec3 motion = this.mob.getDeltaMovement();
            AABB aabb = this.mob.getBoundingBox();
            this.mob.move(MoverType.SELF, movementOffset);
            Vec3 movementDir = new Vec3(this.mob.getX() - px, this.mob.getY() - py, this.mob.getZ() - pz).normalize();
            this.mob.setBoundingBox(aabb);
            this.setLocationFromBoundingbox();
            this.mob.setDeltaMovement(motion);
            Vec3 probeVector = new Vec3(
                  Math.abs(movementDir.x) < 0.001 ? -Math.signum(upVector.x) : 0.0,
                  Math.abs(movementDir.y) < 0.001 ? -Math.signum(upVector.y) : 0.0,
                  Math.abs(movementDir.z) < 0.001 ? -Math.signum(upVector.z) : 0.0
               )
               .normalize()
               .scale(1.0E-4);
            this.mob.move(MoverType.SELF, probeVector);
            Vec3 collisionNormal = new Vec3(
                  Math.abs(this.mob.getX() - px - probeVector.x) > 1.0E-6 ? Math.signum(-probeVector.x) : 0.0,
                  Math.abs(this.mob.getY() - py - probeVector.y) > 1.0E-6 ? Math.signum(-probeVector.y) : 0.0,
                  Math.abs(this.mob.getZ() - pz - probeVector.z) > 1.0E-6 ? Math.signum(-probeVector.z) : 0.0
               )
               .normalize();
            this.mob.setBoundingBox(aabb);
            this.setLocationFromBoundingbox();
            this.mob.setDeltaMovement(motion);
            Vec3 surfaceMovementDir = movementDir.subtract(collisionNormal.scale(collisionNormal.dot(movementDir))).normalize();
            boolean isInnerCorner = Math.abs(collisionNormal.x) + Math.abs(collisionNormal.y) + Math.abs(collisionNormal.z) > 1.0001F;
            if (!isInnerCorner) {
               movementDir = surfaceMovementDir;
            }

            stickingForce = stickingForce.subtract(surfaceMovementDir.scale(surfaceMovementDir.normalize().dot(stickingForce)));
            float moveSpeed = Mth.sqrt(forward * forward + strafe * strafe);
            this.mob.setDeltaMovement(this.mob.getDeltaMovement().add(movementDir.scale(moveSpeed)));
         }
      }

      this.mob.setDeltaMovement(this.mob.getDeltaMovement().add(stickingForce));
      double px = this.mob.getX();
      double py = this.mob.getY();
      double pz = this.mob.getZ();
      Vec3 motion = this.mob.getDeltaMovement();
      this.mob.move(MoverType.SELF, motion);
      this.prevAttachedSides = this.attachedSides;
      this.attachedSides = new Vec3(
         Math.abs(this.mob.getX() - px - motion.x) > 0.001 ? -Math.signum(motion.x) : 0.0,
         Math.abs(this.mob.getY() - py - motion.y) > 0.001 ? -Math.signum(motion.y) : 0.0,
         Math.abs(this.mob.getZ() - pz - motion.z) > 0.001 ? -Math.signum(motion.z) : 0.0
      );
      float slipperiness = 0.91F;
      if (this.mob.onGround()) {
         this.mob.fallDistance = 0.0;
         BlockPos offsetPos = new BlockPos(this.mob.blockPosition()).relative((Direction)groundDirection.getLeft());
         slipperiness = this.climber.getBlockSlipperiness(offsetPos);
      }

      motion = this.mob.getDeltaMovement();
      Vec3 orthogonalMotion = upVector.scale(upVector.dot(motion));
      Vec3 tangentialMotion = motion.subtract(orthogonalMotion);
      this.mob
         .setDeltaMovement(
            tangentialMotion.x * slipperiness + orthogonalMotion.x * 0.98F,
            tangentialMotion.y * slipperiness + orthogonalMotion.y * 0.98F,
            tangentialMotion.z * slipperiness + orthogonalMotion.z * 0.98F
         );
      boolean detachedX = this.attachedSides.x != this.prevAttachedSides.x && Math.abs(this.attachedSides.x) < 0.001;
      boolean detachedY = this.attachedSides.y != this.prevAttachedSides.y && Math.abs(this.attachedSides.y) < 0.001;
      boolean detachedZ = this.attachedSides.z != this.prevAttachedSides.z && Math.abs(this.attachedSides.z) < 0.001;
      if (detachedX || detachedY || detachedZ) {
         float stepHeight = this.mob.maxUpStep();
         AttributeInstance stepAttr = this.mob.getAttribute(Attributes.STEP_HEIGHT);
         if (stepAttr != null) {
            stepAttr.setBaseValue(0.0);
         }

         boolean prevOnGround = this.mob.onGround();
         boolean prevCollidedHorizontally = this.mob.horizontalCollision;
         boolean prevCollidedVertically = this.mob.verticalCollision;
         this.mob
            .move(
               MoverType.SELF,
               new Vec3(
                  detachedX ? -this.prevAttachedSides.x * 0.25 : 0.0,
                  detachedY ? -this.prevAttachedSides.y * 0.25 : 0.0,
                  detachedZ ? -this.prevAttachedSides.z * 0.25 : 0.0
               )
            );
         Vec3 axis = this.prevAttachedSides.normalize();
         Vec3 attachVector = upVector.scale(-1.0);
         attachVector = attachVector.subtract(axis.scale(axis.dot(attachVector)));
         if (Math.abs(attachVector.x) > Math.abs(attachVector.y) && Math.abs(attachVector.x) > Math.abs(attachVector.z)) {
            attachVector = new Vec3(Math.signum(attachVector.x), 0.0, 0.0);
         } else if (Math.abs(attachVector.y) > Math.abs(attachVector.z)) {
            attachVector = new Vec3(0.0, Math.signum(attachVector.y), 0.0);
         } else {
            attachVector = new Vec3(0.0, 0.0, Math.signum(attachVector.z));
         }

         double attachDst = motion.length() + 0.1F;
         AABB aabb = this.mob.getBoundingBox();
         motion = this.mob.getDeltaMovement();

         for (int i = 0; i < 2 && !this.mob.onGround(); i++) {
            this.mob.move(MoverType.SELF, attachVector.scale(attachDst));
         }

         if (stepAttr != null) {
            stepAttr.setBaseValue(stepHeight);
         }

         if (!this.mob.onGround()) {
            this.mob.setBoundingBox(aabb);
            this.setLocationFromBoundingbox();
            this.mob.setDeltaMovement(motion);
            this.mob.setOnGround(prevOnGround);
            this.mob.horizontalCollision = prevCollidedHorizontally;
            this.mob.verticalCollision = prevCollidedVertically;
         } else {
            this.mob.setDeltaMovement(Vec3.ZERO);
         }
      }

      this.mob.calculateEntityAnimation(true);
   }

   private float getRelevantMoveFactor(float slipperiness) {
      return this.mob.onGround() ? this.mob.getSpeed() * (0.16277136F / (slipperiness * slipperiness * slipperiness)) : 0.02F;
   }

   private Vec3 getStickingForce(Pair<Direction, Vec3> walkingSide) {
      double uprightness = Math.max(this.attachmentNormal.y, 0.0);
      double gravity = this.mob.getGravity();
      double stickingForce = gravity * uprightness + 0.08 * (1.0 - uprightness);
      return ((Vec3)walkingSide.getRight()).scale(stickingForce);
   }

   public void updateOffsetsAndOrientation() {
      Vec3 direction = this.getOrientation().getGlobal(this.mob.getYRot(), this.mob.getXRot());
      boolean isAttached = false;
      double baseStickingOffsetX = 0.0;
      double baseStickingOffsetY = this.climber.getVerticalOffset(1.0F);
      double baseStickingOffsetZ = 0.0;
      Vec3 baseOrientationNormal = new Vec3(0.0, 1.0, 0.0);
      if (!this.isTravelingInFluid && this.mob.onGround() && this.mob.getVehicle() == null) {
         Vec3 p = this.mob.position();
         Vec3 s = p.add(0.0, this.mob.getBbHeight() * 0.5F, 0.0);
         AABB inclusionBox = new AABB(s.x, s.y, s.z, s.x, s.y, s.z).inflate(this.collisionsInclusionRange);
         Pair<Vec3, Vec3> attachmentPoint = CollisionSmoothingUtil.findClosestPoint(
            consumer -> this.forEachCollisonBox(inclusionBox, consumer),
            s,
            this.attachmentNormal.scale(-1.0),
            this.collisionsSmoothingRange,
            1.0F,
            0.001F,
            20,
            0.05F,
            s
         );
         AABB entityBox = this.mob.getBoundingBox();
         if (attachmentPoint != null) {
            Vec3 attachmentPos = (Vec3)attachmentPoint.getLeft();
            double dx = Math.max(entityBox.minX - attachmentPos.x, attachmentPos.x - entityBox.maxX);
            double dy = Math.max(entityBox.minY - attachmentPos.y, attachmentPos.y - entityBox.maxY);
            double dz = Math.max(entityBox.minZ - attachmentPos.z, attachmentPos.z - entityBox.maxZ);
            if (Math.max(dx, Math.max(dy, dz)) < 0.5) {
               isAttached = true;
               this.lastAttachmentOffsetX = Mth.clamp(attachmentPos.x - p.x, -this.mob.getBbWidth() / 2.0F, this.mob.getBbWidth() / 2.0F);
               this.lastAttachmentOffsetY = Mth.clamp(attachmentPos.y - p.y, 0.0, this.mob.getBbHeight());
               this.lastAttachmentOffsetZ = Mth.clamp(attachmentPos.z - p.z, -this.mob.getBbWidth() / 2.0F, this.mob.getBbWidth() / 2.0F);
               this.lastAttachmentOrientationNormal = (Vec3)attachmentPoint.getRight();
            }
         }
      }

      this.prevAttachmentOffsetX = this.attachmentOffsetX;
      this.prevAttachmentOffsetY = this.attachmentOffsetY;
      this.prevAttachmentOffsetZ = this.attachmentOffsetZ;
      this.prevAttachmentNormal = this.attachmentNormal;
      float attachmentBlend = this.attachedTicks * 0.2F;
      this.attachmentOffsetX = baseStickingOffsetX + (this.lastAttachmentOffsetX - baseStickingOffsetX) * attachmentBlend;
      this.attachmentOffsetY = baseStickingOffsetY + (this.lastAttachmentOffsetY - baseStickingOffsetY) * attachmentBlend;
      this.attachmentOffsetZ = baseStickingOffsetZ + (this.lastAttachmentOffsetZ - baseStickingOffsetZ) * attachmentBlend;
      this.attachmentNormal = baseOrientationNormal.add(this.lastAttachmentOrientationNormal.subtract(baseOrientationNormal).scale(attachmentBlend))
         .normalize();
      if (!isAttached) {
         this.attachedTicks = Math.max(0, this.attachedTicks - 1);
      } else {
         this.attachedTicks = Math.min(5, this.attachedTicks + 1);
      }

      this.orientation = this.calculateOrientation(1.0F);
      Pair<Float, Float> newRotations = this.getOrientation().getLocalRotation(direction);
      float yawDelta = (Float)newRotations.getLeft() - this.mob.getYRot();
      float pitchDelta = (Float)newRotations.getRight() - this.mob.getXRot();
      this.orientationYawDelta = yawDelta;
      this.mob.setYRot(Mth.wrapDegrees(this.mob.getYRot() + yawDelta));
      this.mob.yRotO = this.wrapAngleInRange(this.mob.yRotO, this.mob.getYRot());
      this.mob.yBodyRot = Mth.wrapDegrees(this.mob.yBodyRot + yawDelta);
      this.mob.yBodyRotO = this.wrapAngleInRange(this.mob.yBodyRotO, this.mob.yBodyRot);
      this.mob.yHeadRot = Mth.wrapDegrees(this.mob.yHeadRot + yawDelta);
      this.mob.yHeadRotO = this.wrapAngleInRange(this.mob.yHeadRotO, this.mob.yHeadRot);
      this.mob.setXRot(Mth.wrapDegrees(this.mob.getXRot() + pitchDelta));
      this.mob.xRotO = this.wrapAngleInRange(this.mob.xRotO, this.mob.getXRot());
   }

   private float wrapAngleInRange(float angle, float target) {
      while (target - angle < -180.0F) {
         angle -= 360.0F;
      }

      while (target - angle >= 180.0F) {
         angle += 360.0F;
      }

      return angle;
   }

   public Orientation calculateOrientation(float partialTicks) {
      Vec3 attachmentNormal = this.prevAttachmentNormal.add(this.attachmentNormal.subtract(this.prevAttachmentNormal).scale(partialTicks));
      Vec3 localZ = new Vec3(0.0, 0.0, 1.0);
      Vec3 localX = new Vec3(1.0, 0.0, 0.0);
      float componentZ = (float)localZ.dot(attachmentNormal);
      float componentX = (float)localX.dot(attachmentNormal);
      float yaw = (float)Math.toDegrees(Mth.atan2(componentX, componentZ));
      localZ = new Vec3(Math.sin(Math.toRadians(yaw)), 0.0, Math.cos(Math.toRadians(yaw)));
      Vec3 localY = new Vec3(0.0, 1.0, 0.0);
      localX = new Vec3(Math.sin(Math.toRadians(yaw - 90.0F)), 0.0, Math.cos(Math.toRadians(yaw - 90.0F)));
      componentZ = (float)localZ.dot(attachmentNormal);
      float componentY = (float)localY.dot(attachmentNormal);
      componentX = (float)localX.dot(attachmentNormal);
      float pitch = (float)Math.toDegrees(Mth.atan2(Mth.sqrt(componentX * componentX + componentZ * componentZ), componentY));
      Matrix4f m = new Matrix4f();
      m.multiply(new Matrix4f((float)Math.toRadians(yaw), 0.0F, 1.0F, 0.0F));
      m.multiply(new Matrix4f((float)Math.toRadians(pitch), 1.0F, 0.0F, 0.0F));
      m.multiply(new Matrix4f((float)Math.toRadians(Math.signum(0.5F - componentY - componentZ - componentX) * yaw), 0.0F, 1.0F, 0.0F));
      localZ = m.multiply(new Vec3(0.0, 0.0, -1.0));
      localY = m.multiply(new Vec3(0.0, 1.0, 0.0));
      localX = m.multiply(new Vec3(1.0, 0.0, 0.0));
      return new Orientation(attachmentNormal, localZ, localY, localX, componentZ, componentY, componentX, yaw, pitch);
   }

   public boolean onJump() {
      if (this.jumpDir != null) {
         float jumpStrength = 0.42F;
         if (this.mob.hasEffect(MobEffects.JUMP_BOOST)) {
            MobEffectInstance effect = this.mob.getEffect(MobEffects.JUMP_BOOST);
            if (effect != null) {
               jumpStrength += 0.1F * (effect.getAmplifier() + 1);
            }
         }
         Vec3 motion = this.mob.getDeltaMovement();
         Vec3 orthogonalMotion = this.jumpDir.scale(this.jumpDir.dot(motion));
         Vec3 tangentialMotion = motion.subtract(orthogonalMotion);
         this.mob
            .setDeltaMovement(
               tangentialMotion.x + this.jumpDir.x * jumpStrength,
               tangentialMotion.y + this.jumpDir.y * jumpStrength,
               tangentialMotion.z + this.jumpDir.z * jumpStrength
            );
         if (this.mob.isSprinting()) {
            Vec3 boost = this.getOrientation().getGlobal(this.mob.getYRot(), 0.0F).scale(0.2F);
            this.mob.setDeltaMovement(this.mob.getDeltaMovement().add(boost));
         }

         this.mob.needsSync = true;
         return true;
      } else {
         return false;
      }
   }

   public boolean onMove(MoverType type, Vec3 pos, boolean pre) {
      if (pre) {
         this.preWalkingPosition = this.mob.position();
         this.preMoveY = this.mob.getY();
      } else {
         if (Math.abs(this.mob.getY() - this.preMoveY - pos.y) > 1.0E-6) {
            this.mob.setDeltaMovement(this.mob.getDeltaMovement().multiply(1.0, 0.0, 1.0));
         }

         this.mob.setOnGround(this.mob.horizontalCollision || this.mob.verticalCollision);
      }

      return false;
   }

   @Nullable
   public BlockPos getAdjustedOnPosition(BlockPos onPosition) {
      float verticalOffset = this.climber.getVerticalOffset(1.0F);
      int x = Mth.floor(this.mob.getX() + this.attachmentOffsetX - (float)this.attachmentNormal.x * (verticalOffset + 0.2F));
      int y = Mth.floor(this.mob.getY() + this.attachmentOffsetY - (float)this.attachmentNormal.y * (verticalOffset + 0.2F));
      int z = Mth.floor(this.mob.getZ() + this.attachmentOffsetZ - (float)this.attachmentNormal.z * (verticalOffset + 0.2F));
      BlockPos pos = new BlockPos(x, y, z);
      if (this.mob.level().isEmptyBlock(pos) && this.attachmentNormal.y < 0.0) {
         BlockPos posDown = pos.below();
         BlockState stateDown = this.mob.level().getBlockState(posDown);
         if (stateDown.is(BlockTags.FENCES) || stateDown.is(BlockTags.WALLS) || stateDown.getBlock() instanceof FenceGateBlock) {
            Maddons.LOGGER.info("hey");
            return posDown;
         }
      }

      return pos;
   }

   public boolean getAdjustedCanTriggerWalking(boolean canTriggerWalking) {
      if (this.preWalkingPosition != null && this.climber.canClimberTriggerWalking() && !this.mob.isPassenger()) {
         this.preWalkingPosition = null;
      }

      return false;
   }

   private void forEachCollisonBox(AABB aabb, DoubleLineConsumer action) {
      int minChunkX = Mth.floor(aabb.minX - 1.0E-7) - 1 >> 4;
      int maxChunkX = Mth.floor(aabb.maxX + 1.0E-7) + 1 >> 4;
      int minChunkZ = Mth.floor(aabb.minZ - 1.0E-7) - 1 >> 4;
      int maxChunkZ = Mth.floor(aabb.maxZ + 1.0E-7) + 1 >> 4;
      final int width = maxChunkX - minChunkX + 1;
      int depth = maxChunkZ - minChunkZ + 1;
      final BlockGetter[] blockReaderCache = new BlockGetter[width * depth];
      final CollisionGetter collisionReader = this.mob.level();

      for (int cx = minChunkX; cx <= maxChunkX; cx++) {
         for (int cz = minChunkZ; cz <= maxChunkZ; cz++) {
            blockReaderCache[cx - minChunkX + (cz - minChunkZ) * width] = collisionReader.getChunkForCollisions(cx, cz);
         }
      }

      final int fMinChunkX = minChunkX;
      final int fMinChunkZ = minChunkZ;
      CollisionGetter cachedCollisionReader = new CollisionGetter() {
         public int getHeight() {
            return ClimberComponent.this.mob.level().getHeight();
         }

         public int getMinY() {
            return ClimberComponent.this.mob.level().getMinY();
         }

         public BlockEntity getBlockEntity(BlockPos pos) {
            return collisionReader.getBlockEntity(pos);
         }

         public BlockState getBlockState(BlockPos pos) {
            return collisionReader.getBlockState(pos);
         }

         public FluidState getFluidState(BlockPos pos) {
            return collisionReader.getFluidState(pos);
         }

         public WorldBorder getWorldBorder() {
            return collisionReader.getWorldBorder();
         }

         public List<VoxelShape> getEntityCollisions(Entity entity, AABB aabbx) {
            return collisionReader.getEntityCollisions(entity, aabbx);
         }

         public BlockGetter getChunkForCollisions(int chunkX, int chunkZ) {
            return blockReaderCache[chunkX - fMinChunkX + (chunkZ - fMinChunkZ) * width];
         }
      };
      Iterable<VoxelShape> shapes = cachedCollisionReader.getBlockCollisions(this.mob, aabb);
      shapes.forEach(shape -> shape.forAllBoxes(action));
   }

   private List<AABB> getCollisionBoxes(AABB aabb) {
      List<AABB> boxes = new ArrayList<>();
      this.forEachCollisonBox(aabb, (minX, minY, minZ, maxX, maxY, maxZ) -> boxes.add(new AABB(minX, minY, minZ, maxX, maxY, maxZ)));
      return boxes;
   }

   private static double calculateXOffset(AABB aabb, AABB other, double offsetX) {
      if (other.maxY > aabb.minY && other.minY < aabb.maxY && other.maxZ > aabb.minZ && other.minZ < aabb.maxZ) {
         if (offsetX > 0.0 && other.maxX <= aabb.minX) {
            double dx = aabb.minX - other.maxX;
            if (dx < offsetX) {
               offsetX = dx;
            }
         } else if (offsetX < 0.0 && other.minX >= aabb.maxX) {
            double dx = aabb.maxX - other.minX;
            if (dx > offsetX) {
               offsetX = dx;
            }
         }

         return offsetX;
      } else {
         return offsetX;
      }
   }

   private static double calculateYOffset(AABB aabb, AABB other, double offsetY) {
      if (other.maxX > aabb.minX && other.minX < aabb.maxX && other.maxZ > aabb.minZ && other.minZ < aabb.maxZ) {
         if (offsetY > 0.0 && other.maxY <= aabb.minY) {
            double dy = aabb.minY - other.maxY;
            if (dy < offsetY) {
               offsetY = dy;
            }
         } else if (offsetY < 0.0 && other.minY >= aabb.maxY) {
            double dy = aabb.maxY - other.minY;
            if (dy > offsetY) {
               offsetY = dy;
            }
         }

         return offsetY;
      } else {
         return offsetY;
      }
   }

   private static double calculateZOffset(AABB aabb, AABB other, double offsetZ) {
      if (other.maxX > aabb.minX && other.minX < aabb.maxX && other.maxY > aabb.minY && other.minY < aabb.maxY) {
         if (offsetZ > 0.0 && other.maxZ <= aabb.minZ) {
            double dz = aabb.minZ - other.maxZ;
            if (dz < offsetZ) {
               offsetZ = dz;
            }
         } else if (offsetZ < 0.0 && other.minZ >= aabb.maxZ) {
            double dz = aabb.maxZ - other.minZ;
            if (dz > offsetZ) {
               offsetZ = dz;
            }
         }

         return offsetZ;
      } else {
         return offsetZ;
      }
   }

   private void setLocationFromBoundingbox() {
      AABB axisalignedbb = this.mob.getBoundingBox();
      this.mob.setPosRaw((axisalignedbb.minX + axisalignedbb.maxX) / 2.0, axisalignedbb.minY, (axisalignedbb.minZ + axisalignedbb.maxZ) / 2.0);
   }
}
