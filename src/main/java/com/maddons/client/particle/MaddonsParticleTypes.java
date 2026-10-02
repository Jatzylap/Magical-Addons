package com.maddons.client.particle;

import com.maddons.Maddons;

import net.fabricmc.fabric.api.client.particle.v1.ParticleProviderRegistry;
import net.fabricmc.fabric.api.particle.v1.FabricParticleTypes;
import net.minecraft.core.Registry;
import net.minecraft.core.particles.SimpleParticleType;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.Identifier;

public class MaddonsParticleTypes
{
    public static final SimpleParticleType GOLDEN_OAK_LEAVES = FabricParticleTypes.simple();

    public static void register()
    {
        Registry.register(BuiltInRegistries.PARTICLE_TYPE, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "golden_oak_leaves"), GOLDEN_OAK_LEAVES);
    }

    public static void registerProviders()
    {
        ParticleProviderRegistry.getInstance().register(GOLDEN_OAK_LEAVES, GoldenOakLeavesParticle.Provider::new);
    }
}
