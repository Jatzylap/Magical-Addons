package com.maddons.event;

import com.maddons.network.handling.IPayloadContext;
import com.maddons.util.MaddonsDataSync;

import net.fabricmc.fabric.api.entity.event.v1.ServerPlayerEvents;
import net.minecraft.server.level.ServerPlayer;

public class JoinPlayerEvents implements ServerPlayerEvents.Join
{
    @Override
    public void onJoin(ServerPlayer client)
    {
        IPayloadContext player = (IPayloadContext)client;
        int result = player.getPersistentData().getIntOr("SparkstoneLevel", 0);
        MaddonsDataSync.syncSparkstone(result, client);
    }
}
