# item:sparkstone_golem_spawn_egg/use
# called by advancement: item:use/sparkstone_golem_spawn_egg

execute at @n[type=marker,tag=maddons.sparkstone_golem_spawn_egg] run function magical_addons:entity/sparkstone_golem/summon {nbt:{}}

kill @n[type=marker,tag=maddons.sparkstone_golem_spawn_egg]

scoreboard players reset @s maddons.sheep_spawn_egg

advancement revoke @s from magical_addons:---/item/use