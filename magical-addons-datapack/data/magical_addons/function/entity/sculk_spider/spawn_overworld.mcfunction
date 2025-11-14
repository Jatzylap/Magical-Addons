# entity:sculk_spider/spawn_overworld
# called by: dimension:overworld/load_entities

function magical_addons:entity/sculk_spider/summon {nbt:{}}
execute if predicate magical_addons:shared/50_percent run function magical_addons:entity/sculk_spider/summon {nbt:{}}
execute if predicate magical_addons:shared/50_percent run function magical_addons:entity/sculk_spider/summon {nbt:{}}

tag @e[type=cave_spider,tag=maddons.sculk_spider,tag=maddons.vehicle,distance=...5] add maddons.spawned

## Spread
execute as @e[type=cave_spider,tag=maddons.spawned] at @s run spreadplayers ~ ~ 0 32 under -40 false @s
execute as @e[type=cave_spider,tag=maddons.spawned] at @s if predicate magical_addons:shared/5_percent run function magical_addons:entity/sculk_spider/summon_baby {nbt:{}}
execute as @e[type=cave_spider,tag=maddons.spawned] at @s if predicate magical_addons:shared/5_percent run function magical_addons:entity/sculk_spider/summon_baby {nbt:{}}

tag @e[type=cave_spider,tag=maddons.spawned] remove maddons.spawned