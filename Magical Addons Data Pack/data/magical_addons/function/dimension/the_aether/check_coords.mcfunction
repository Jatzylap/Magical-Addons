# dimension:the_aether/check_coords
# called by : dimension:the_aether/enter

## Save portal coords in overworld
$execute store result storage magical_addons:data data.overworld_portal_pos[{UUID:$(UUID)}].x int 1 run data get entity @s Pos[0] 1
$execute store result storage magical_addons:data data.overworld_portal_pos[{UUID:$(UUID)}].y int 1 run data get entity @s Pos[1] 1
$execute store result storage magical_addons:data data.overworld_portal_pos[{UUID:$(UUID)}].z int 1 run data get entity @s Pos[2] 1

## Check bed in aether
$return run function magical_addons:dimension/the_aether/check_aether_portal with storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}]