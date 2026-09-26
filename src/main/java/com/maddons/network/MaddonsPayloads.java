package com.maddons.network;

import com.maddons.network.handling.IPayloadContext;
import com.maddons.network.packet.SparkstoneSyncDataS2CPacket;
import net.fabricmc.fabric.api.client.networking.v1.ClientPlayNetworking;
import net.fabricmc.fabric.api.networking.v1.PayloadTypeRegistry;

public class MaddonsPayloads
{
    public static void registerServerBound() {}
    public static void registerClientBound()
    {
        PayloadTypeRegistry.clientboundPlay().register(SparkstoneSyncDataS2CPacket.TYPE, SparkstoneSyncDataS2CPacket.CODEC);
    }
    public static void registerClientReceivers()
    {
        ClientPlayNetworking.registerGlobalReceiver(SparkstoneSyncDataS2CPacket.TYPE, (payload, context) -> {
            ((IPayloadContext) context.player()).getPersistentData().putInt("SparkstoneLevel", payload.sparkstone());
        });
    }
}
