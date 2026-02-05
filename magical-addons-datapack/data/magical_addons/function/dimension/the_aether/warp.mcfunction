# dimension:the_aether/warp
# called by : dimension:the_aether/warp_start

$tp $(x) $(y) $(z)

## Load chunks
execute at @s run forceload add ~-1 ~-2 ~1 ~1

## 'Your portal was obstructed' 
execute at @s unless block ~ ~ ~ white_bed{components:{"minecraft:custom_data":{magical_addons:{id:"aether_portal"}}}} run scoreboard players set #magical_addons:aether_obstructed maddons.temp 1

## Calculate chunk coords to load custom blocks 
execute store result score #maddons.chunk maddons.x store result score #maddons.chunk_ maddons.x run data get entity @s Pos[0]
execute store result score #maddons.chunk maddons.y store result score #maddons.chunk_ maddons.y run data get entity @s Pos[1]
execute store result score #maddons.chunk maddons.z store result score #maddons.chunk_ maddons.z run data get entity @s Pos[2]
scoreboard players operation #maddons.chunk_ maddons.x %= #16 maddons.constant
scoreboard players operation #maddons.chunk_ maddons.y %= #16 maddons.constant
scoreboard players operation #maddons.chunk_ maddons.z %= #16 maddons.constant
execute store result storage magical_addons:temp data.dimension.x int 1 run scoreboard players operation #maddons.chunk maddons.x -= #maddons.chunk_ maddons.x
execute store result storage magical_addons:temp data.dimension.y int 1 run scoreboard players operation #maddons.chunk maddons.y -= #maddons.chunk_ maddons.y
execute store result storage magical_addons:temp data.dimension.z int 1 run scoreboard players operation #maddons.chunk maddons.z -= #maddons.chunk_ maddons.z
data modify storage magical_addons:temp data.dimension.UUID set from entity @s UUID
data modify storage magical_addons:temp data.dimension.id set string entity @s Dimension 10
function magical_addons:dimension/set_chunk_corner with storage magical_addons:temp data.dimension

## Unload chunks
execute at @s run forceload remove ~-1 ~-2 ~1 ~1