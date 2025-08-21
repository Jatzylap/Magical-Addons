# dimension:the_aether/check_coords
# called by : dimension:the_aether/enter

## Save overworld pos
$execute store result storage magical_addons:data data.overworld_portal_pos[{UUID:$(UUID)}].x int 1 run data get entity @s Pos[0] 1
$execute store result storage magical_addons:data data.overworld_portal_pos[{UUID:$(UUID)}].y int 1 run data get entity @s Pos[1] 1
$execute store result storage magical_addons:data data.overworld_portal_pos[{UUID:$(UUID)}].z int 1 run data get entity @s Pos[2] 1

## Check aether pos
$return run execute if data storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].x