package com.maddons.mixin;

import net.minecraft.nbt.CompoundTag;
import net.minecraft.world.level.storage.ValueInput;
import net.minecraft.world.level.storage.ValueOutput;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.item.component.CustomData;

import java.util.Optional;

import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;
import com.maddons.network.handling.IPayloadContext;

@Mixin(Entity.class)
public abstract class EntityMixin implements IPayloadContext
{
    private Optional<CompoundTag> persistentData;

    @Override
    public CompoundTag getPersistentData()
    {
        if(this.persistentData == null)
        {
            this.persistentData = Optional.of(new CompoundTag());
        }
        return persistentData.get();
    }

    // method executes on entity NBT updates, world save, auto save
    @Inject(method = "saveWithoutId", at = @At("HEAD"))
    protected void injectSaveMethod(ValueOutput output, CallbackInfo info)
    {
        if (persistentData != null)
        {
            output.store("MaddonsData", CustomData.COMPOUND_TAG_CODEC, this.persistentData.get());
        }
    }

    // method executes on world load
    @Inject(method = "load", at = @At("HEAD"))
    protected void injectLoadMethod(ValueInput input, CallbackInfo info)
    {
        if (input.contains("MaddonsData"))
        {
            persistentData = input.read("MaddonsData", CustomData.COMPOUND_TAG_CODEC);
        }
    }
}
