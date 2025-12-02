# particle:ring_of_fire/3
# called by: entity:tick

## End
execute if score @s maddons.move >= @s maddons.constant run return run kill

## Timer
scoreboard players add @s maddons.move 1

## Shift colour
execute if score @s maddons.move matches 60.. store result entity @s item.components."minecraft:custom_model_data".floats[0] float 0.05 run scoreboard players add @s maddons.animation 1