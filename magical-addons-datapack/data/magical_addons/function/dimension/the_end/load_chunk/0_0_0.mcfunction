# dimension:the_end/load_chunk/0_0_0
# called by: dimension:the_end/new_chunks

execute store result storage magical_addons:temp data.dimension.x int 1 run scoreboard players operation #maddons.chunk_ maddons.x = #maddons.chunk maddons.x
execute store result storage magical_addons:temp data.dimension.y int 1 run scoreboard players operation #maddons.chunk_ maddons.y = #maddons.chunk maddons.y
execute store result storage magical_addons:temp data.dimension.z int 1 run scoreboard players operation #maddons.chunk_ maddons.z = #maddons.chunk maddons.z

function magical_addons:dimension/the_end/load_chunk with storage magical_addons:temp data.dimension