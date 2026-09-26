package com.maddons.api.awcapi.entity.movement;

import com.maddons.api.awcapi.entity.IAdvancedClimber;
import net.minecraft.core.BlockPos;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.pathfinder.Path;

public class ClimberPathNavigator<T extends Mob & IAdvancedClimber> extends AdvancedClimberPathNavigator<T> {
   private boolean useVanillaBehaviour;
   private BlockPos targetPosition;

   public ClimberPathNavigator(T entity, Level worldIn, boolean useVanillaBehaviour) {
      super(entity, worldIn, false, true, true);
      this.useVanillaBehaviour = useVanillaBehaviour;
   }

   @Override
   public Path createPath(BlockPos pos, int checkpointRange) {
      this.targetPosition = pos;
      return super.createPath(pos, checkpointRange);
   }

   @Override
   public Path createPath(Entity entityIn, int checkpointRange) {
      this.targetPosition = entityIn.blockPosition();
      return super.createPath(entityIn, checkpointRange);
   }

   public boolean moveTo(Entity entityIn, double speedIn) {
      Path path = this.createPath(entityIn, 0);
      if (path != null) {
         return this.moveTo(path, speedIn);
      }

      this.targetPosition = entityIn.blockPosition();
      this.speedModifier = speedIn;
      return true;
   }

   @Override
   public void tick() {
      if (!this.isDone()) {
         super.tick();
      } else if (this.targetPosition != null && this.useVanillaBehaviour) {
         BlockPos mobPos = this.mob.blockPosition();
         BlockPos checkPos = BlockPos.containing(this.targetPosition.getX(), this.mob.getY(), this.targetPosition.getZ());
         if (this.targetPosition.closerThan(mobPos, Math.max(this.mob.getBbWidth(), 1.0))
            || this.mob.getY() > this.targetPosition.getY() && checkPos.closerThan(mobPos, Math.max(this.mob.getBbWidth(), 1.0))) {
            this.targetPosition = null;
         } else {
            this.mob.getMoveControl().setWantedPosition(this.targetPosition.getX(), this.targetPosition.getY(), this.targetPosition.getZ(), this.speedModifier);
         }
      }
   }
}
