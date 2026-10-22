package com.maddons.item;

import java.util.function.Function;
import com.maddons.Maddons;
import com.maddons.block.MaddonsBlocks;
import com.maddons.fluid.MaddonsFluids;

import net.minecraft.core.Registry;
import net.minecraft.core.component.DataComponents;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.Identifier;
import net.minecraft.resources.ResourceKey;
import net.minecraft.world.item.BucketItem;
import net.minecraft.world.item.CreativeModeTab;
import net.minecraft.world.item.CreativeModeTabs;
import net.minecraft.world.item.EnderpearlItem;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Items;
import net.minecraft.world.item.component.MapItemColor;
import net.minecraft.network.chat.Component;
import net.fabricmc.fabric.api.creativetab.v1.CreativeModeTabEvents;
import net.fabricmc.fabric.api.creativetab.v1.FabricCreativeModeTab;

public class MaddonsItems
{
	public static final Item SPARKSTONE_BUCKET = register(MaddonsItemIds.SPARKSTONE_BUCKET, p -> new BucketItem(MaddonsFluids.SPARKSTONE, p), new Item.Properties().craftRemainder(Items.BUCKET).stacksTo(1));
	public static final Item ANCIENT_STAFF = register(MaddonsItemIds.ANCIENT_STAFF, p -> new Item(p), new Item.Properties().stacksTo(1).component(DataComponents.MAP_COLOR, MapItemColor.DEFAULT));
	public static final Item SPARKSTONE_ORB = register(MaddonsItemIds.SPARKSTONE_ORB, p -> new EnderpearlItem(p), new Item.Properties());
	
	public static final ResourceKey<CreativeModeTab> CREATIVE_TAB_KEY = ResourceKey.create(
		BuiltInRegistries.CREATIVE_MODE_TAB.key(), Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "creative_tab")
	);
	
	public static Item register(ResourceKey<Item> itemKey, Function<Item.Properties, Item> itemFactory, Item.Properties settings)
	{
		Item item = itemFactory.apply(settings.setId(itemKey));
		Registry.register(BuiltInRegistries.ITEM, itemKey, item);
		return item;
	}

	public static final CreativeModeTab CREATIVE_TAB = FabricCreativeModeTab.builder()
		.icon(() -> new ItemStack(MaddonsBlocks.CRYSTALISED_SPARKSTONE))
		.title(Component.translatable("creativeTab.maddons"))
		.displayItems((params, output) -> {
			output.accept(MaddonsBlocks.CRYSTALISED_SPARKSTONE);
			output.accept(MaddonsBlocks.GOLDEN_OAK_LEAVES);
			output.accept(MaddonsItems.SPARKSTONE_BUCKET);
			output.accept(MaddonsItems.ANCIENT_STAFF);
			output.accept(MaddonsItems.SPARKSTONE_ORB);
		})
		.build();
		
	public static void initialise()
	{
		CreativeModeTabEvents.modifyOutputEvent(CreativeModeTabs.NATURAL_BLOCKS).register((creativeTab) -> {
			creativeTab.accept(MaddonsBlocks.CRYSTALISED_SPARKSTONE);
			creativeTab.accept(MaddonsBlocks.GOLDEN_OAK_LEAVES);
		});
		CreativeModeTabEvents.modifyOutputEvent(CreativeModeTabs.TOOLS_AND_UTILITIES).register((creativeTab) -> {
			creativeTab.accept(MaddonsItems.SPARKSTONE_BUCKET);
			creativeTab.accept(MaddonsItems.SPARKSTONE_ORB);
		});
		CreativeModeTabEvents.modifyOutputEvent(CreativeModeTabs.COMBAT).register((creativeTab) -> {
			creativeTab.accept(MaddonsItems.ANCIENT_STAFF);
		});
		
		Registry.register(BuiltInRegistries.CREATIVE_MODE_TAB, CREATIVE_TAB_KEY, CREATIVE_TAB);
	}
}