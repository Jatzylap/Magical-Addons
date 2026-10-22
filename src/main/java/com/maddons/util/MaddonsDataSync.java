package com.maddons.util;

import com.maddons.network.handling.IPayloadContext;
import com.maddons.network.packet.SparkstoneSyncDataS2CPacket;
import net.fabricmc.fabric.api.networking.v1.ServerPlayNetworking;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.entity.LivingEntity;

public class MaddonsDataSync
{
    public static void syncSparkstone(int sparkstone, ServerPlayer player)
    {
        SparkstoneSyncDataS2CPacket payload = new SparkstoneSyncDataS2CPacket(sparkstone);
        ServerPlayNetworking.send(player, payload);
    }

    public static void giveSparkstone(LivingEntity entity, int amount)
    {
        IPayloadContext target = (IPayloadContext)entity;
        int get = target.getPersistentData().getIntOr("SparkstoneLevel", 0);
        int result = get + amount;
        if (result > 20) result = 20;
        else if (result < 0) result = 0;
        target.getPersistentData().putInt("SparkstoneLevel", result);
        if (target instanceof ServerPlayer)
        {
            MaddonsDataSync.syncSparkstone(result, (ServerPlayer)entity);
        }
    }
}