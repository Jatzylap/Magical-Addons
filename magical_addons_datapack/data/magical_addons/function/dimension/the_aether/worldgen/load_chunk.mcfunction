# dimension:the_aether/worldgen/load_chunk
# called by: dimension:the_aether/worldgen/new_chunks

scoreboard players operation @s maddons.chunk.x_ = @s maddons.chunk.x
scoreboard players operation @s maddons.chunk.y_ = @s maddons.chunk.y
scoreboard players operation @s maddons.chunk.z_ = @s maddons.chunk.z

$execute store result storage maddons.dimension:the_aether data.player.new_chunk.x int 1 run scoreboard players operation @s maddons.chunk.x_ += #$(x) maddons.constant
$execute store result storage maddons.dimension:the_aether data.player.new_chunk.y int 1 run scoreboard players operation @s maddons.chunk.y_ += #$(y) maddons.constant
$execute store result storage maddons.dimension:the_aether data.player.new_chunk.z int 1 run scoreboard players operation @s maddons.chunk.z_ += #$(z) maddons.constant

function magical_addons:dimension/the_aether/worldgen/set_chunk with storage maddons.dimension:the_aether data.player.new_chunk