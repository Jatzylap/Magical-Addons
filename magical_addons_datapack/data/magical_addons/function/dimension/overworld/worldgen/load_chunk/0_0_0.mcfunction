# dimension:overworld/worldgen/load_chunk/0_0_0
# called by: dimension:overworld/worldgen/new_chunks

execute store result storage maddons.dimension:overworld data.player.new_chunk.x int 1 run scoreboard players operation @s maddons.chunk.x_ = @s maddons.chunk.x
execute store result storage maddons.dimension:overworld data.player.new_chunk.y int 1 run scoreboard players operation @s maddons.chunk.y_ = @s maddons.chunk.y
execute store result storage maddons.dimension:overworld data.player.new_chunk.z int 1 run scoreboard players operation @s maddons.chunk.z_ = @s maddons.chunk.z

function magical_addons:dimension/overworld/worldgen/load_chunk with storage maddons.dimension:overworld data.player.new_chunk