package com.maddons.command;

import net.fabricmc.fabric.api.command.v2.CommandRegistrationCallback;

public class MaddonsCommands
{
    public static void registerCommands()
    {
        CommandRegistrationCallback.EVENT.register(SparkstoneCommand::register);
    }
}
