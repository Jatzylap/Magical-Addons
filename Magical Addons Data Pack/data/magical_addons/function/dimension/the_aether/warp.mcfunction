# dimension:the_aether/warp
# called by : dimension:the_aether/warp_start

$tp $(x) $(y) $(z)

## Load chunks
execute at @s run forceload add ~-1 ~-2 ~1 ~1

## 'Your portal was obstructed' 
execute at @s unless block ~ ~ ~ white_bed{components:{"minecraft:custom_data":{magical_addons:{id:"aether_portal"}}}} run scoreboard players set #magical_addons:aether_obstructed maddons.temp 1

## Unload chunks
execute at @s run forceload remove ~-1 ~-2 ~1 ~1