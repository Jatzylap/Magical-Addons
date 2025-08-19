# block:vanilla/spawner/iraycast
# called by advancement: block:place/*

data modify storage iris:settings TargetEntities set value 0b
data modify storage iris:settings Callback set value "magical_addons:block/vanilla/spawner/iscan"
execute store result storage iris:settings MaxRecursionDepth int 1 run attribute @s minecraft:block_interaction_range get 2

execute anchored eyes positioned ^ ^ ^ run function iris:get_target

advancement revoke @s from magical_addons:---/block/interact