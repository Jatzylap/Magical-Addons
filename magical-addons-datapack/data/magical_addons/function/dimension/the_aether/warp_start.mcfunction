# dimension:the_aether/warp_start
# called by : dimension:the_aether/enter

$execute in the_aether run function magical_addons:dimension/the_aether/warp with storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}]

## Generate another portal if obstructed
execute in the_aether at @s run function magical_addons:dimension/the_aether/save_portal_warp with entity @s