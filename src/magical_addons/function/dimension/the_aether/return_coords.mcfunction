# dimension:the_aether/return_coords
# called by : dimension:the_aether/return

## Set new aether portal pos if any
$execute if block ~ ~ ~ #magical_addons:aether_portal if entity @n[type=item_display,tag=maddons.aether_portal,distance=...5] store result storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].x int 1 run data get entity @s Pos[0] 1
$execute if block ~ ~ ~ #magical_addons:aether_portal if entity @n[type=item_display,tag=maddons.aether_portal,distance=...5] store result storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].y int 1 run data get entity @s Pos[1] 1
$execute if block ~ ~ ~ #magical_addons:aether_portal if entity @n[type=item_display,tag=maddons.aether_portal,distance=...5] store result storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].z int 1 run data get entity @s Pos[2] 1

## Get overworld pos
$data modify storage magical_addons:temp data.last_overworld_pos set from storage magical_addons:data data.overworld_portal_pos[{UUID:$(UUID)}]