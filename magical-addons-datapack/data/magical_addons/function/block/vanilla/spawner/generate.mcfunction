# block:vanilla/spawner/generate
# called by: dimension:*/load_block_entities

$scoreboard players set #maddons.chunk.pos maddons.x $(x)
$scoreboard players set #maddons.chunk.pos maddons.y $(y)
$scoreboard players set #maddons.chunk.pos maddons.z $(z)

execute store result score #maddons.spawner.pos maddons.x run data get block ~ ~ ~ x
execute store result score #maddons.spawner.pos maddons.y run data get block ~ ~ ~ y
execute store result score #maddons.spawner.pos maddons.z run data get block ~ ~ ~ z

scoreboard players operation #maddons.spawner.pos maddons.x -= #-29999999 maddons.constant
scoreboard players operation #maddons.spawner.pos maddons.y -= #16 maddons.constant
scoreboard players operation #maddons.spawner.pos maddons.z -= #1600 maddons.constant

execute store result storage magical_addons:temp data.dimension.spawner.x int 1 run scoreboard players operation #maddons.chunk.pos maddons.x += #maddons.spawner.pos maddons.x
execute store result storage magical_addons:temp data.dimension.spawner.y int 1 run scoreboard players operation #maddons.chunk.pos maddons.y += #maddons.spawner.pos maddons.y
execute store result storage magical_addons:temp data.dimension.spawner.z int 1 run scoreboard players operation #maddons.chunk.pos maddons.z += #maddons.spawner.pos maddons.z

$execute in $(dim) run function magical_addons:block/vanilla/spawner/generate_ with storage magical_addons:temp data.dimension.spawner