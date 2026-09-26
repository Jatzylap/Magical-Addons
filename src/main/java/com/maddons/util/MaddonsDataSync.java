package com.maddons.util;

import com.maddons.network.packet.SparkstoneSyncDataS2CPacket;
import net.fabricmc.fabric.api.networking.v1.ServerPlayNetworking;
import net.minecraft.server.level.ServerPlayer;

public class MaddonsDataSync
{
    public static void syncSparkstone(int sparkstone, ServerPlayer player)
    {
        SparkstoneSyncDataS2CPacket payload = new SparkstoneSyncDataS2CPacket(sparkstone);
        ServerPlayNetworking.send(player, payload);
    }
}