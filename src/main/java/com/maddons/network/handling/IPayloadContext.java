package com.maddons.network.handling;

import net.minecraft.nbt.CompoundTag;

public interface IPayloadContext
{
    CompoundTag getPersistentData();
}