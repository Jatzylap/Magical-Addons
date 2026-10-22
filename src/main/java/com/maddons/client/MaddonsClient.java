package com.maddons.client;

import com.maddons.Maddons;
import com.maddons.client.gui.MaddonsHudLayers;
import com.maddons.client.particle.MaddonsParticleTypes;
import com.maddons.client.renderer.entity.MaddonsEntityRenderers;
import com.maddons.fluid.MaddonsFluids;
import com.maddons.network.MaddonsPayloads;
import net.fabricmc.api.ClientModInitializer;
import net.fabricmc.fabric.api.client.render.fluid.v1.FluidRenderingRegistry;
import net.minecraft.client.renderer.block.FluidModel;
import net.minecraft.client.resources.model.sprite.Material;
import net.minecraft.resources.Identifier;

public class MaddonsClient implements ClientModInitializer {
	@Override
	public void onInitializeClient()
	{
		MaddonsEntityRenderers.initialise();
		MaddonsHudLayers.initialise();
		MaddonsPayloads.registerClientReceivers();
		MaddonsParticleTypes.registerProviders();

		FluidRenderingRegistry.register(
			MaddonsFluids.SPARKSTONE,
			MaddonsFluids.FLOWING_SPARKSTONE,
			new FluidModel.Unbaked(
				new Material(Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "block/sparkstone")),
				new Material(Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "block/sparkstone_flow")),
				null,
				null
			)
		);
	}
}