package com.maddons.client.renderer.entity;

import com.maddons.client.model.geom.ModelLayers;
import com.maddons.entity.MaddonsEntityTypes;
import net.minecraft.client.renderer.entity.EntityRenderers;

public class MaddonsEntityRenderers
{
    public static void initialise()
    {
        EntityRenderers.register(MaddonsEntityTypes.SPARKSTONE_GOLEM, (context) -> {
            return new SparkstoneGolemRenderer(context);
        });
        EntityRenderers.register(MaddonsEntityTypes.SCULK_SPIDER, (context) -> {
            return new SculkSpiderRenderer(context);
        });
        ModelLayers.registerModelLayers();
    }
}