package com.maddons.block;

import com.maddons.Maddons;

import net.minecraft.references.BlockItemId;
import net.minecraft.resources.Identifier;

public class MaddonsBlockItemIds
{
    public static final BlockItemId CRYSTALISED_SPARKSTONE = create("crystalised_sparkstone");
    public static final BlockItemId GOLDEN_OAK_LEAVES = create("golden_oak_leaves");

	private static BlockItemId create(String name)
    {
		Identifier id = Identifier.fromNamespaceAndPath(Maddons.MOD_ID, name);
		return BlockItemId.create(id, id);
    }
}
