# dungeon:aether_portal/raycast
# called by advancement: dungeon:set_aether_portal

data modify storage iris:settings TargetEntities set value 0b
data modify storage iris:settings Callback set value "magical_addons:dungeon/aether_portal/scan"
execute store result storage iris:settings MaxRecursionDepth int 1 run attribute @s minecraft:block_interaction_range get 2

execute anchored eyes positioned ^ ^ ^ run function iris:get_target

advancement revoke @s only magical_addons:---/dungeon/set_aether_portal