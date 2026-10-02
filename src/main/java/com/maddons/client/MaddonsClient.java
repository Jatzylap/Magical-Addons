package com.maddons.client;

import com.maddons.client.gui.MaddonsHudLayers;
import com.maddons.client.particle.MaddonsParticleTypes;
import com.maddons.client.renderer.entity.MaddonsEntityRenderers;
import com.maddons.network.MaddonsPayloads;
import net.fabricmc.api.ClientModInitializer;

public class MaddonsClient implements ClientModInitializer {
	@Override
	public void onInitializeClient()
	{
		MaddonsEntityRenderers.initialise();
		MaddonsHudLayers.initialise();
		MaddonsPayloads.registerClientReceivers();
		MaddonsParticleTypes.registerProviders();
	}
}