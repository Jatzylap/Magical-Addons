package com.maddons.command;

import com.maddons.network.handling.IPayloadContext;
import com.maddons.util.MaddonsDataSync;
import com.mojang.brigadier.CommandDispatcher;
import com.mojang.brigadier.arguments.IntegerArgumentType;
import net.minecraft.commands.Commands;
import net.minecraft.commands.Commands.CommandSelection;
import net.minecraft.commands.arguments.EntityArgument;
import net.minecraft.commands.CommandBuildContext;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.network.chat.Component;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.server.permissions.Permissions;
import net.minecraft.world.entity.Entity;

public class SparkstoneCommand
{
	private static int giveSparkstone(CommandSourceStack source, Entity target, int input)
	{
		IPayloadContext entity = (IPayloadContext)target;
		int operand = entity.getPersistentData().getIntOr("SparkstoneLevel", 0);
		int result = operand + input;
		if (result > 20) result = 20;
		else if (result < 0) result = 0;
		source.sendSuccess(() -> Component.literal("Gave %s Sparkstone.".formatted(input)), false);
        entity.getPersistentData().putInt("SparkstoneLevel", result);
		if (entity instanceof ServerPlayer)
		{
			MaddonsDataSync.syncSparkstone(result, (ServerPlayer)entity);
		}
		return 1;
	}
	private static int querySparkstone(CommandSourceStack source, Entity target)
	{
		IPayloadContext entity = (IPayloadContext)target;
		int result = entity.getPersistentData().getIntOr("SparkstoneLevel", 0);
		source.sendSuccess(() -> Component.literal("Counted %s Sparkstone.".formatted(result)), false);
		if (entity instanceof ServerPlayer)
		{
			MaddonsDataSync.syncSparkstone(result, (ServerPlayer)entity);
		}
		return result;
	}
	public static void register(
		CommandDispatcher<CommandSourceStack> dispatcher,
		CommandBuildContext cbc,
		CommandSelection cs
	)
	{
		dispatcher.register(Commands.literal("sparkstone")
			.requires(source -> source.permissions().hasPermission(Permissions.COMMANDS_MODERATOR))
			.then(Commands.literal("add")
				.then(Commands.argument("target", EntityArgument.entity())
					.then(Commands.argument("value", IntegerArgumentType.integer())
						.executes
						(
							c -> giveSparkstone
							(
								c.getSource(),
								EntityArgument.getEntity(c, "target"),
								IntegerArgumentType.getInteger(c, "value")
							)
						)
					)
				)
			)
			.then(Commands.literal("query")
				.then(Commands.argument("target", EntityArgument.entity())
					.executes
					(
						c -> querySparkstone
						(
							c.getSource(),
							EntityArgument.getEntity(c, "target")
						)
					)
				)
			)
		);
	}
}