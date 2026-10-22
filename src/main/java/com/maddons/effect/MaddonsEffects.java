package com.maddons.effect;

import com.maddons.Maddons;

import net.minecraft.core.Holder;
import net.minecraft.core.Registry;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.Identifier;
import net.minecraft.world.effect.MobEffect;

public class MaddonsEffects
{
    public static final Holder<MobEffect> RECHARGING = Registry.registerForHolder(BuiltInRegistries.MOB_EFFECT, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "recharging"), new RechargingEffect());

	public static void initialise() {}
}
