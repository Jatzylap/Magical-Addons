package com.maddons.network.packet;

// import net.fabricmc.fabric.api.client.networking.v1.ClientPlayNetworking.PlayPayloadHandler;
import com.maddons.Maddons;
import net.minecraft.network.codec.ByteBufCodecs;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;
import net.minecraft.resources.Identifier;
import net.minecraft.network.RegistryFriendlyByteBuf;

public record SparkstoneSyncDataS2CPacket(int sparkstone) implements CustomPacketPayload
{
    public static final Identifier SPARKSTONE_SYNC_ID = Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "sparkstone_player_sync"); 
    public static final CustomPacketPayload.Type<SparkstoneSyncDataS2CPacket> TYPE = new CustomPacketPayload.Type<>(SPARKSTONE_SYNC_ID);
    // FriendlyByteBuf buffer = RegistryFriendlyByteBuf(sparkstone);
    // buffer.writeInt(sparkstone);
    // ServerPlayNetworking.send(player, (CustomPacketPayload)buffer);
    public static final StreamCodec<RegistryFriendlyByteBuf, SparkstoneSyncDataS2CPacket> CODEC = StreamCodec.composite(ByteBufCodecs.INT, SparkstoneSyncDataS2CPacket::sparkstone, SparkstoneSyncDataS2CPacket::new);
    
    @Override
	public Type<? extends CustomPacketPayload> type() {
		return TYPE;
	}
}
