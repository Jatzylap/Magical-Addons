# dimension:the_end/worldgen/load_chunk/16_16_0
# called by: dimension:the_end/worldgen/new_chunks

scoreboard players operation @s maddons.chunk.x_ = @s maddons.chunk.x
scoreboard players operation @s maddons.chunk.y_ = @s maddons.chunk.y
scoreboard players operation @s maddons.chunk.z_ = @s maddons.chunk.z

execute store result storage maddons.dimension:the_end data.player.new_chunk.x int 1 run scoreboard players operation @s maddons.chunk.x_ += #16 maddons.constant
execute store result storage maddons.dimension:the_end data.player.new_chunk.y int 1 run scoreboard players operation @s maddons.chunk.y_ += #16 maddons.constant
execute store result storage maddons.dimension:the_end data.player.new_chunk.z int 1 run scoreboard players operation @s maddons.chunk.z_ += #0 maddons.constant

function magical_addons:dimension/the_end/worldgen/load_chunk with storage maddons.dimension:the_end data.player.new_chunk