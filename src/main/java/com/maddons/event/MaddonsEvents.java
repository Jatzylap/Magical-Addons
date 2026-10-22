package com.maddons.event;

import com.maddons.network.handling.IPayloadContext;
import com.maddons.util.MaddonsDataSync;

import net.fabricmc.fabric.api.entity.event.v1.ServerPlayerEvents;

public class MaddonsEvents
{
    public static void registerEvents()
    {
        ServerPlayerEvents.COPY_FROM.register((op, np, alive) -> {
            IPayloadContext original = ((IPayloadContext) op);
            IPayloadContext player = ((IPayloadContext) np);
            int result = original.getPersistentData().getIntOr("SparkstoneLevel", 0);
            player.getPersistentData().putInt("SparkstoneLevel", result);
        });
        ServerPlayerEvents.AFTER_RESPAWN.register((op, np, alive) -> {
            IPayloadContext player = (IPayloadContext) op;
            int result = player.getPersistentData().getIntOr("SparkstoneLevel", 0);
            MaddonsDataSync.syncSparkstone(result, np);
        });
        ServerPlayerEvents.JOIN.register((client) -> {
            IPayloadContext player = (IPayloadContext)client;
            int result = player.getPersistentData().getIntOr("SparkstoneLevel", 0);
            MaddonsDataSync.syncSparkstone(result, client);
        });
    }
}