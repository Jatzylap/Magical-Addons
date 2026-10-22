package com.maddons.client.data;

import java.util.Optional;

import net.minecraft.client.data.models.model.ModelTemplate;
import net.minecraft.client.data.models.model.TextureSlot;
import net.minecraft.resources.Identifier;

public class MaddonsModelTemplates
{
    public static final ModelTemplate ANCIENT_STAFF_ITEM = createItem("handheld_rod", TextureSlot.LAYER0, TextureSlot.LAYER1);

    private static ModelTemplate createItem(final String id, final TextureSlot... slots) {
      return new ModelTemplate(Optional.of(Identifier.withDefaultNamespace("item/" + id)), Optional.empty(), slots);
    }
}
