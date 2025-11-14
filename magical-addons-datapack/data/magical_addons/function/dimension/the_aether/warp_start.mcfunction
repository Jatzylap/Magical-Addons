# dimension:the_aether/warp_start
# called by : dimension:the_aether/enter

$execute in the_aether run function magical_addons:dimension/the_aether/warp with storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}]

## Generate another bed if obstructed
execute if score #magical_addons:aether_obstructed maddons.temp matches 1 run function magical_addons:dimension/the_aether/save_portal with entity @s
$execute if score #magical_addons:aether_obstructed maddons.temp matches 1 run data remove storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}]