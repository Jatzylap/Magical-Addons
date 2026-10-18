# main:join
# called by advancement: main:join_game

## Load
schedule function magical_addons:main/first 65
schedule function magical_addons:main/second 115
schedule function magical_addons:main/third 116
schedule function magical_addons:main/fourth 117
schedule function magical_addons:main/fifth 118
schedule function magical_addons:main/sixth 119
schedule function magical_addons:main/seventh 120
schedule function magical_addons:main/final 121

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

## Reset
tag @s remove magical_addons
advancement revoke @s from magical_addons:---/main/root
advancement revoke @s from magical_addons:---/block/root
advancement revoke @s from magical_addons:---/entity/root
advancement revoke @s from magical_addons:---/dungeon/root
advancement revoke @s from magical_addons:---/shared/root
advancement revoke @s from magical_addons:---/dimension/root
advancement revoke @s from magical_addons:---/item/root
advancement revoke @s from magical_addons:---/player/root
advancement revoke @s from magical_addons:---/recipe/root
scoreboard players add @s maddons.mana 0
scoreboard players enable @s maddons.developer_mode
scoreboard players reset @s maddons.leave_game