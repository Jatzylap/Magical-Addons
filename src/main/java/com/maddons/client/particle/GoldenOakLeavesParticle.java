package com.maddons.client.particle;

import net.minecraft.client.multiplayer.ClientLevel;
import net.minecraft.client.particle.FallingLeavesParticle;
import net.minecraft.client.particle.Particle;
import net.minecraft.client.particle.ParticleProvider;
import net.minecraft.client.particle.SpriteSet;
import net.minecraft.client.renderer.texture.TextureAtlasSprite;
import net.minecraft.core.particles.SimpleParticleType;
import net.minecraft.util.RandomSource;

public class GoldenOakLeavesParticle extends FallingLeavesParticle
{
    public GoldenOakLeavesParticle(
		ClientLevel level,
		double x,
		double y,
		double z,
		TextureAtlasSprite sprite,
		float fallAcceleration,
		float sideAcceleration,
		boolean swirl,
		boolean flowAway,
		float scale,
		float startVelocity
    )
    {
        super(level, x, y, z, sprite, fallAcceleration, sideAcceleration, swirl, flowAway, scale, startVelocity);
    }

    public record Provider(SpriteSet spriteSet) implements ParticleProvider<SimpleParticleType>
    {
        @Override
        public Particle createParticle(
            SimpleParticleType options,
            ClientLevel level,
            double x,
            double y,
            double z,
            double xSpeed,
            double ySpeed,
            double zSpeed,
            RandomSource random
        )
        {
            return new GoldenOakLeavesParticle(level, x, y, z, this.spriteSet.get(random), 0.25F, 2.0F, false, true, 1.0F, 0.0F);
        }
    }
}