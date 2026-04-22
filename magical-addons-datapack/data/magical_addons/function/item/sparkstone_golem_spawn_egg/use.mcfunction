# item:sparkstone_golem_spawn_egg/use
# called by advancement: item:use/sparkstone_golem_spawn_egg

execute as @e[tag=maddons.sparkstone_golem_spawn_egg] at @s run function magical_addons:entity/sparkstone_golem/summon {nbt:{}}

kill @e[tag=maddons.sparkstone_golem_spawn_egg]

scoreboard players reset @s maddons.sheep_spawn_egg

advancement revoke @s from magical_addons:---/item/use