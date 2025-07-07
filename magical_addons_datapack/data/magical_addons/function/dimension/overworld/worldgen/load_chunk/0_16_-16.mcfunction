# dimension:overworld/worldgen/load_chunk/0_16_-16
# called by: dimension:overworld/worldgen/new_chunks

scoreboard players operation @s maddons.chunk.x_ = @s maddons.chunk.x
scoreboard players operation @s maddons.chunk.y_ = @s maddons.chunk.y
scoreboard players operation @s maddons.chunk.z_ = @s maddons.chunk.z

execute store result storage magical_addons:overworld data.player.new_chunk.x int 1 run scoreboard players operation @s maddons.chunk.x_ += #0 maddons.constant
execute store result storage magical_addons:overworld data.player.new_chunk.y int 1 run scoreboard players operation @s maddons.chunk.y_ += #16 maddons.constant
execute store result storage magical_addons:overworld data.player.new_chunk.z int 1 run scoreboard players operation @s maddons.chunk.z_ -= #16 maddons.constant

function magical_addons:dimension/overworld/worldgen/load_chunk with storage magical_addons:overworld data.player.new_chunk