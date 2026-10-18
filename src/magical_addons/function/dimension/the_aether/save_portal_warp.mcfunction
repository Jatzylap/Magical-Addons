# dimension:the_aether/save_portal_warp
# called by : dimension:the_aether/warp_start

## Load chunks
forceload add ~-1 ~-2 ~1 ~1

## Generate portal in aether
execute unless entity @n[type=item_display,tag=maddons.aether_portal,distance=...5] align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/aether_portal/generate_north

## Save portal pos in aether
$execute store result storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].x int 1 run data get entity @s Pos[0] 1
$execute store result storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].y int 1 run data get entity @s Pos[1] 1
$execute store result storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].z int 1 run data get entity @s Pos[2] 1

## Re-position
execute positioned over motion_blocking run tp ~ ~ ~

## Unload chunks
forceload remove ~-1 ~-2 ~1 ~1