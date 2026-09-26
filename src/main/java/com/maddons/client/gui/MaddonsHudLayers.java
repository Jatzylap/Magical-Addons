package com.maddons.client.gui;

import com.maddons.Maddons;
import com.maddons.network.handling.IPayloadContext;
import net.fabricmc.fabric.api.client.rendering.v1.hud.HudElementRegistry;
import net.fabricmc.fabric.api.client.rendering.v1.hud.VanillaHudElements;
import net.minecraft.client.DeltaTracker;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.GuiGraphicsExtractor;
import net.minecraft.client.player.LocalPlayer;
import net.minecraft.client.renderer.RenderPipelines;
import net.minecraft.resources.Identifier;
import net.minecraft.tags.FluidTags;
import net.minecraft.world.level.GameType;

public class MaddonsHudLayers
{
    private static final Identifier SPARKSTONE_EMPTY = Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "hud/sparkstone_empty");
    private static final Identifier SPARKSTONE_HALF = Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "hud/sparkstone_half");
    private static final Identifier SPARKSTONE_FULL = Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "hud/sparkstone_full");
    private static void extract(GuiGraphicsExtractor graphics, DeltaTracker tickCounter)
    {
        Minecraft client = Minecraft.getInstance();
        if (client != null)
        {
            LocalPlayer player = client.player;
            boolean isUnderWater = player.isEyeInFluid(FluidTags.WATER);
            int maxAirSupplyTicks = player.getMaxAirSupply();
		    int currentAirSupplyTicks = Math.clamp(player.getAirSupply(), 0, maxAirSupplyTicks);
            int progress = ((IPayloadContext)player).getPersistentData().getIntOr("SparkstoneLevel", 0);
            int x = graphics.guiWidth() / 2 + 91;
            int y = graphics.guiHeight() - 39 - 9 - 2;
            if (isUnderWater || currentAirSupplyTicks < maxAirSupplyTicks) { y -= 9; }
            if (player.gameMode() == GameType.SURVIVAL || (player.gameMode() == GameType.ADVENTURE))
            {
                for (int i = 0; i < 10; i++)
                {
                    int fpos = x - i * 8 - 9;
                    if (progress > 0) {
                        graphics.blitSprite(RenderPipelines.GUI_TEXTURED, SPARKSTONE_EMPTY, fpos, y, 9, 9);
                    }
                    if (i * 2 + 1 < progress) {        // FULL
                        graphics.blitSprite(RenderPipelines.GUI_TEXTURED, SPARKSTONE_FULL, fpos, y, 9, 9);
                    }
                    if (i * 2 + 1 == progress) {    // HALF
                        graphics.blitSprite(RenderPipelines.GUI_TEXTURED, SPARKSTONE_HALF, fpos, y, 9, 9);
                    }
                }
            }
        }
	}
	public static void initialise()
    {
		HudElementRegistry.attachElementAfter(VanillaHudElements.INFO_BAR, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "sparkstone_bar"), MaddonsHudLayers::extract);
	}
}