package com.maddons.item;

import java.util.function.Function;
import com.maddons.Maddons;
import com.maddons.block.MaddonsBlocks;

import net.minecraft.core.Registry;
import net.minecraft.core.registries.Registries;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.Identifier;
import net.minecraft.resources.ResourceKey;
import net.minecraft.world.item.CreativeModeTab;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;
import net.minecraft.network.chat.Component;
import net.fabricmc.fabric.api.creativetab.v1.FabricCreativeModeTab;

public class MaddonsItems
{	
	// public static final Item TEST = register("test", Item::new, new Item.Properties());
	public static <T extends Item> T register(String name, Function<Item.Properties, T> itemFactory, Item.Properties settings)
	{
		ResourceKey<Item> itemKey = ResourceKey.create(Registries.ITEM, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, name));
		T item = itemFactory.apply(settings.setId(itemKey));

		Registry.register(BuiltInRegistries.ITEM, itemKey, item);
		Registry.register(BuiltInRegistries.CREATIVE_MODE_TAB, MADDONS_TAB_KEY, MADDONS_TAB);

		return item;
	}
	public static final ResourceKey<CreativeModeTab> MADDONS_TAB_KEY = ResourceKey.create(
		BuiltInRegistries.CREATIVE_MODE_TAB.key(), Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "creative_tab")
	);
	public static final CreativeModeTab MADDONS_TAB = FabricCreativeModeTab.builder()
		.icon(() -> new ItemStack(MaddonsBlocks.SPARKSTONE_BLOCK))
		.title(Component.translatable("creativeTab.maddons"))
		.displayItems((params, output) -> {
			output.accept(MaddonsBlocks.SPARKSTONE_BLOCK.asItem());
			output.accept(MaddonsBlocks.GOLDEN_OAK_LEAVES.asItem());
		})
		.build();
	public static void initialise() {
	}
}