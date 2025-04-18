# dimension:the_nether/worldgen/start
# called by: dimension:the_nether/loop

execute store result score @s maddons.chunk.x store result score @s maddons.chunk.x_ run data get entity @s Pos[0]
execute store result score @s maddons.chunk.y store result score @s maddons.chunk.y_ run data get entity @s Pos[1]
execute store result score @s maddons.chunk.z store result score @s maddons.chunk.z_ run data get entity @s Pos[2]

scoreboard players operation @s maddons.chunk.x_ %= #16 maddons.constant
scoreboard players operation @s maddons.chunk.y_ %= #16 maddons.constant
scoreboard players operation @s maddons.chunk.z_ %= #16 maddons.constant

execute store result storage maddons.dimension:the_nether data.player.new_chunk.x int 1 run scoreboard players operation @s maddons.chunk.x -= @s maddons.chunk.x_
execute store result storage maddons.dimension:the_nether data.player.new_chunk.y int 1 run scoreboard players operation @s maddons.chunk.y -= @s maddons.chunk.y_
execute store result storage maddons.dimension:the_nether data.player.new_chunk.z int 1 run scoreboard players operation @s maddons.chunk.z -= @s maddons.chunk.z_

execute in the_nether run function magical_addons:dimension/the_nether/worldgen/set_chunk_corner with storage maddons.dimension:the_nether data.player.new_chunk