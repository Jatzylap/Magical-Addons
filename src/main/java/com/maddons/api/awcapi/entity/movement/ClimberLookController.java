package com.maddons.api.awcapi.entity.movement;

import com.maddons.api.awcapi.entity.IAdvancedClimber;
import java.util.Optional;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.entity.ai.control.LookControl;
import net.minecraft.world.phys.Vec3;
import org.jetbrains.annotations.NotNull;

public class ClimberLookController<T extends Mob & IAdvancedClimber> extends LookControl {
   protected final IAdvancedClimber climber;

   public ClimberLookController(T entity) {
      super(entity);
      this.climber = entity;
   }

   @NotNull
   protected Optional<Float> getXRotD() {
      Vec3 dir = new Vec3(this.wantedX - this.mob.getX(), this.wantedY - this.mob.getEyeY(), this.wantedZ - this.mob.getZ());
      return Optional.of((Float)this.climber.getOrientation().getLocalRotation(dir).getRight());
   }

   @NotNull
   protected Optional<Float> getYRotD() {
      Vec3 dir = new Vec3(this.wantedX - this.mob.getX(), this.wantedY - this.mob.getEyeY(), this.wantedZ - this.mob.getZ());
      return Optional.of((Float)this.climber.getOrientation().getLocalRotation(dir).getLeft());
   }
}
