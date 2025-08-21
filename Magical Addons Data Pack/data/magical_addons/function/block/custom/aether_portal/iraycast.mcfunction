# block:custom/aether_portal/iraycast
# called by advancement: block:interact/*

data modify storage iris:settings TargetEntities set value 0b
data modify storage iris:settings Callback set value "magical_addons:block/custom/aether_portal/iscan"
execute store result storage iris:settings MaxRecursionDepth int 1 run attribute @s minecraft:block_interaction_range get 2.5

execute anchored eyes positioned ^ ^ ^ run function iris:get_target

advancement revoke @s from magical_addons:---/block/interact

## If player is in bed already
execute if predicate magical_addons:shared/night if block ~ ~ ~ white_bed run playsound block.portal.trigger block @s ~ ~ ~ 0.5