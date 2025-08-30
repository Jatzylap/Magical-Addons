# dungeon:aether_portal/raycast
# called by advancement: dungeon:set_aether_portal

data modify storage bs:data raycast.entities set value 0b
data modify storage bs:data raycast.on_targeted_block set value "execute as @p[advancements={magical_addons:---/dungeon/set_aether_portal=true}] run function magical_addons:dungeon/aether_portal/scan"
execute store result storage bs:data raycast.max_distance int 1 run attribute @s minecraft:block_interaction_range get

execute anchored eyes positioned ^ ^ ^ run function bs.raycast:run

advancement revoke @s only magical_addons:---/dungeon/set_aether_portal