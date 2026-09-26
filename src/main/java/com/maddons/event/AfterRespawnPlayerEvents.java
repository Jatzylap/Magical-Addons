package com.maddons.event;

import com.maddons.network.handling.IPayloadContext;
import com.maddons.util.MaddonsDataSync;

import net.fabricmc.fabric.api.entity.event.v1.ServerPlayerEvents;
import net.minecraft.server.level.ServerPlayer;

public class AfterRespawnPlayerEvents implements ServerPlayerEvents.AfterRespawn
{
    @Override
    public void afterRespawn(ServerPlayer op, ServerPlayer np, boolean alive)
    {
        IPayloadContext player = (IPayloadContext) op;
        int result = player.getPersistentData().getIntOr("SparkstoneLevel", 0);
        MaddonsDataSync.syncSparkstone(result, np);
    }
}