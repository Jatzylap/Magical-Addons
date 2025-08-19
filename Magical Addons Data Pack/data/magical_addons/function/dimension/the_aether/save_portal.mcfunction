# dimension:the_aether/save_portal
# called by : dimension:the_aether/enter

## Generate portal in aether
execute in the_aether at @s align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~ ~ white_bed[facing=north] run function magical_addons:block/custom/aether_portal/generate_north
execute in the_aether at @s run fill ~-1 ~-1 ~-2 ~1 ~-1 ~1 grass_block keep

## Save portal pos in aether
$execute store result storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].x int 1 run data get entity @s Pos[0] 1
$execute store result storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].y int 1 run data get entity @s Pos[1] 1
$execute store result storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].z int 1 run data get entity @s Pos[2] 1