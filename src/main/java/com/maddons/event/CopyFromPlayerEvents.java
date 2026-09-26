package com.maddons.event;

import com.maddons.network.handling.IPayloadContext;

import net.fabricmc.fabric.api.entity.event.v1.ServerPlayerEvents;
import net.minecraft.server.level.ServerPlayer;

public class CopyFromPlayerEvents implements ServerPlayerEvents.CopyFrom
{
    @Override
    public void copyFromPlayer(ServerPlayer op, ServerPlayer np, boolean alive)
    {
        IPayloadContext original = ((IPayloadContext) op);
        IPayloadContext player = ((IPayloadContext) np);
        int result = original.getPersistentData().getIntOr("SparkstoneLevel", 0);
        player.getPersistentData().putInt("SparkstoneLevel", result);
    }
}