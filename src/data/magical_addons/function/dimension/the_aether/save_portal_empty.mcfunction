# dimension:the_aether/save_portal_empty
# called by : dimension:the_aether/find_empty_space

## Load chunks
forceload add ~-1 ~-2 ~1 ~1

## Generate portal in aether
execute align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~-1 ~ unless entity @n[type=item_display,tag=maddons.aether_portal,distance=...5] run function magical_addons:block/custom/aether_portal/generate_north

## Save portal pos in aether (unless obstructed)
execute positioned over motion_blocking run tp ~ ~-0.4375 ~
$execute unless score #magical_addons:aether_obstructed maddons.temp matches 1 store result storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].x int 1 run data get entity @s Pos[0] 1
$execute unless score #magical_addons:aether_obstructed maddons.temp matches 1 store result storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].y int 1 run data get entity @s Pos[1] 1
$execute unless score #magical_addons:aether_obstructed maddons.temp matches 1 store result storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].z int 1 run data get entity @s Pos[2] 1

## Re-position
execute positioned over motion_blocking run tp ~ ~ ~

## Unload chunks
forceload remove ~-1 ~-2 ~1 ~1