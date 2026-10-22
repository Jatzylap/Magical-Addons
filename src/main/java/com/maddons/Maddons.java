package com.maddons;

import com.maddons.item.MaddonsItems;
import com.maddons.block.MaddonsBlocks;
import com.maddons.client.particle.MaddonsParticleTypes;
import com.maddons.entity.MaddonsEntityTypes;
import com.maddons.event.MaddonsEvents;
import com.maddons.network.MaddonsPayloads;
import com.maddons.command.MaddonsCommands;
import com.maddons.effect.MaddonsEffects;
import com.maddons.entity.ai.sensing.MaddonsSensorTypes; 

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import net.fabricmc.api.ModInitializer;

public class Maddons implements ModInitializer {
	public static final String MOD_ID = "maddons";
	public static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);

	@Override
	public void onInitialize()
	{
		// All static fields are evaluated, initialise() method is read before instances of classes are created
		MaddonsItems.initialise();
		MaddonsBlocks.initialise();
		MaddonsEntityTypes.initialise();
		MaddonsEntityTypes.registerSpawnPlacements();
		MaddonsEntityTypes.registerAttributes();
		MaddonsCommands.registerCommands();
		MaddonsEvents.registerEvents();
		MaddonsPayloads.registerClientBound();
		MaddonsPayloads.registerServerBound();
		MaddonsSensorTypes.initialise();
		MaddonsParticleTypes.register();
		MaddonsEffects.initialise();
	}
}