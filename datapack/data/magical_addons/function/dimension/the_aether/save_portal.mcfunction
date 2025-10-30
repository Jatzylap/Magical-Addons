# dimension:the_aether/save_portal
# called by : dimension:the_aether/find_empty_space

## Load chunks
execute in the_aether at @s run forceload add ~-1 ~-2 ~1 ~1

## Generate portal in aether
execute in the_aether at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~-1 ~ unless block ~ ~ ~ white_bed{components:{"minecraft:custom_data":{magical_addons:{id:"aether_portal"}}}} positioned ~ ~-1 ~ run function magical_addons:block/custom/sparkstone/generate
execute in the_aether at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~-1 ~ unless block ~ ~ ~ white_bed{components:{"minecraft:custom_data":{magical_addons:{id:"aether_portal"}}}} positioned ~ ~-1 ~-1 run function magical_addons:block/custom/sparkstone/generate
execute in the_aether at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~-1 ~ unless block ~ ~ ~ white_bed{components:{"minecraft:custom_data":{magical_addons:{id:"aether_portal"}}}} run function magical_addons:block/custom/aether_portal/generate_north

## Save portal pos in aether (unless obstructed)
$execute unless score #magical_addons:aether_obstructed maddons.temp matches 1 store result storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].x int 1 run data get entity @s Pos[0] 1
$execute unless score #magical_addons:aether_obstructed maddons.temp matches 1 store result storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].y int 1 run data get entity @s Pos[1] 1
$execute unless score #magical_addons:aether_obstructed maddons.temp matches 1 store result storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].z int 1 run data get entity @s Pos[2] 1

## Unload chunks
execute in the_aether at @s run forceload remove ~-1 ~-2 ~1 ~1