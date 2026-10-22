package com.maddons.item;

import com.maddons.Maddons;

import net.minecraft.core.registries.Registries;
import net.minecraft.resources.Identifier;
import net.minecraft.resources.ResourceKey;
import net.minecraft.world.item.Item;

public class MaddonsItemIds
{
	public static final ResourceKey<Item> SPARKSTONE_BUCKET = create("sparkstone_bucket");
    public static final ResourceKey<Item> ANCIENT_STAFF = create("ancient_staff");
    public static final ResourceKey<Item> SPARKSTONE_ORB = create("sparkstone_orb");

    public static ResourceKey<Item> create(String name) {
        return ResourceKey.create(Registries.ITEM, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, name));
    }
}
