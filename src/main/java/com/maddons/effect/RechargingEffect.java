package com.maddons.effect;

import com.maddons.util.MaddonsDataSync;

import net.minecraft.server.level.ServerLevel;
import net.minecraft.world.effect.MobEffect;
import net.minecraft.world.effect.MobEffectCategory;
import net.minecraft.world.entity.LivingEntity;

public class RechargingEffect extends MobEffect {

    protected RechargingEffect() {
        super(MobEffectCategory.BENEFICIAL, 0x0000FF);
    }

    // Called every tick to check if the effect can be applied or not
	@Override
	public boolean shouldApplyEffectTickThisTick(int duration, int amplifier) {
		// In our case, we just make it return true so that it applies the effect every tick
		return true;
	}

	// Called when the effect is applied.
	@Override
	public boolean applyEffectTick(ServerLevel level, LivingEntity entity, int amplifier)
    { 
		if (level.getGameTime() % 10 == 0)
		{
			MaddonsDataSync.giveSparkstone(entity, 1 + (int)(amplifier * 0.075F));
		}
		return super.applyEffectTick(level, entity, amplifier);
	}
}
