# entity:sculk_spider/summon
# called by: dimension:overworld/worldgen/set_blocks

function magical_addons:entity/sculk_spider/summon {nbt:{}}
execute if predicate magical_addons:shared/50_percent run function magical_addons:entity/sculk_spider/summon {nbt:{}}
execute if predicate magical_addons:shared/50_percent run function magical_addons:entity/sculk_spider/summon {nbt:{}}

execute as @e[type=cave_spider,tag=maddons.sculk_spider,tag=maddons.vehicle,distance=...5] at @s run spreadplayers ~ ~ 0 32 under -40 false @s