# dimension:the_nether/load_chunk/16_16_-16
# called by: dimension:the_nether/new_chunks

scoreboard players operation #maddons.chunk_ maddons.x = #maddons.chunk maddons.x
scoreboard players operation #maddons.chunk_ maddons.y = #maddons.chunk maddons.y
scoreboard players operation #maddons.chunk_ maddons.z = #maddons.chunk maddons.z

execute store result storage magical_addons:temp data.dimension.x int 1 run scoreboard players operation #maddons.chunk_ maddons.x += #16 maddons.constant
execute store result storage magical_addons:temp data.dimension.y int 1 run scoreboard players operation #maddons.chunk_ maddons.y += #16 maddons.constant
execute store result storage magical_addons:temp data.dimension.z int 1 run scoreboard players operation #maddons.chunk_ maddons.z -= #16 maddons.constant

function magical_addons:dimension/the_nether/load_chunk with storage magical_addons:temp data.dimension