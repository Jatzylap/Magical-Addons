# particle:ring_of_fire/4
# called by: particle:ring_of_fire/3

tag @s add maddons.one

execute store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s maddons.animation 1

data merge entity @s {start_interpolation:-1}