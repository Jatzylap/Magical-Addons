# item:dagger/sparkstone_orb/explosion_effects/7
# called by: item:dagger/sparkstone_orb/explosion_effects/3

tag @s add maddons.four

execute store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s maddons.animation 1

data merge entity @s {start_interpolation:-1}