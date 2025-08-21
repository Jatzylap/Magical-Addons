# block:custom/wizarding_table/iraycast
# called by advancement: block:interact/wizarding_table

data modify storage iris:settings TargetEntities set value 0b
data modify storage iris:settings Callback set value "magical_addons:block/custom/wizarding_table/iscan"
execute store result storage iris:settings MaxRecursionDepth int 1 run attribute @s minecraft:block_interaction_range get 2.5

execute anchored eyes positioned ^ ^ ^ run function iris:get_target

advancement revoke @s from magical_addons:---/block/interact