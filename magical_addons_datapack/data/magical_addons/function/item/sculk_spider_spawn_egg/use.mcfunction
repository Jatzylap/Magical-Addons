# item:sculk_spider_spawn_egg/use
# called by advancement: item:use/sculk_spider_spawn_egg

execute as @e[tag=maddons.sculk_spider_spawn_egg] at @s run function magical_addons:entity/sculk_spider/summon {nbt:{}}

kill @e[tag=maddons.sculk_spider_spawn_egg]

advancement revoke @s only magical_addons:---/item/use/sculk_spider_spawn_egg