package com.maddons.api.awcapi;

import com.maddons.api.awcapi.entity.IAdvancedClimber;

import net.minecraft.core.BlockPos;
import net.minecraft.world.entity.MoverType;
import net.minecraft.world.phys.Vec3;

public class ClimberHelper
{
   public static void tickClimber(IAdvancedClimber climber) {
      climber.getClimberComponent().tick();
   }

   public static void livingTickClimber(IAdvancedClimber climber) {
      climber.getClimberComponent().livingTick();
   }

   public static boolean handleTravel(IAdvancedClimber climber, Vec3 relative) {
      return climber.getClimberComponent().onTravel(relative, true);
   }

   public static void postTravel(IAdvancedClimber climber, Vec3 relative) {
      climber.getClimberComponent().onTravel(relative, false);
   }

   public static boolean handleJump(IAdvancedClimber climber) {
      return climber.getClimberComponent().onJump();
   }

   public static boolean handleMove(IAdvancedClimber climber, MoverType type, Vec3 movement, boolean pre) {
      return climber.getClimberComponent().onMove(type, movement, pre);
   }

   public static BlockPos getAdjustedOnPosition(IAdvancedClimber climber, BlockPos defaultPos) {
      BlockPos adjusted = climber.getClimberComponent().getAdjustedOnPosition(defaultPos);
      return adjusted != null ? adjusted : defaultPos;
   }
}
