package com.maddons.event;

import net.fabricmc.fabric.api.entity.event.v1.ServerPlayerEvents;

public class MaddonsEvents
{
    public static void registerEvents()
    {
        ServerPlayerEvents.COPY_FROM.register(new CopyFromPlayerEvents());
        ServerPlayerEvents.AFTER_RESPAWN.register(new AfterRespawnPlayerEvents());
        ServerPlayerEvents.JOIN.register(new JoinPlayerEvents());
    }
}