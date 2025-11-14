## Set pos
execute if entity @s store result score #maddons.dev.rsc.x maddons.reload_sub_chunk store result score #maddons.dev.rsc.x_ maddons.reload_sub_chunk run data get entity @s Pos[0]
execute if entity @s store result score #maddons.dev.rsc.y maddons.reload_sub_chunk store result score #maddons.dev.rsc.y_ maddons.reload_sub_chunk run data get entity @s Pos[1]
execute if entity @s store result score #maddons.dev.rsc.z maddons.reload_sub_chunk store result score #maddons.dev.rsc.z_ maddons.reload_sub_chunk run data get entity @s Pos[2]

## Set data
$data modify storage magical_addons:temp data.dev.reload_sub_chunk.dimension set value $(dimension)

## Calculate first sub chunk corner
scoreboard players operation #maddons.dev.rsc.x_ maddons.reload_sub_chunk %= #16 maddons.constant
scoreboard players operation #maddons.dev.rsc.y_ maddons.reload_sub_chunk %= #16 maddons.constant
scoreboard players operation #maddons.dev.rsc.z_ maddons.reload_sub_chunk %= #16 maddons.constant

## Store relative data
execute store result storage magical_addons:temp data.dev.reload_sub_chunk.x int 1 run scoreboard players operation #maddons.dev.rsc.x maddons.reload_sub_chunk -= #maddons.dev.rsc.x_ maddons.reload_sub_chunk
execute store result storage magical_addons:temp data.dev.reload_sub_chunk.y int 1 run scoreboard players operation #maddons.dev.rsc.y maddons.reload_sub_chunk -= #maddons.dev.rsc.y_ maddons.reload_sub_chunk
execute store result storage magical_addons:temp data.dev.reload_sub_chunk.z int 1 run scoreboard players operation #maddons.dev.rsc.z maddons.reload_sub_chunk -= #maddons.dev.rsc.z_ maddons.reload_sub_chunk

## Reload chunk
function magical_addons:dev/---/reload_sub_chunk/1 with storage magical_addons:temp data.dev.reload_sub_chunk
kill 