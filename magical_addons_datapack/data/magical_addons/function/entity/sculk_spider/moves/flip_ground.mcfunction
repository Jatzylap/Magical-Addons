# entity:sculk_spider/moves/flip_ground
# called by: entity:sculk_spider/check_local

execute on vehicle run data merge entity @s {NoGravity:0b}
execute on vehicle run attribute @s minecraft:movement_speed base reset

execute if entity @s[tag=!maddons.ground] run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:20,transformation:{left_rotation:[0f,0f,0f,1f]}}
execute if entity @s[tag=!maddons.ground] run execute on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:20,transformation:{left_rotation:[0f,0f,0f,1f]}}

tag @s[tag=!maddons.ground] add maddons.flip

## Ceiling
execute if entity @s[tag=maddons.flip,tag=maddons.ceiling] run data modify entity @s item.components."minecraft:custom_model_data".floats[1] set value 2f
execute if entity @s[tag=maddons.flip,tag=maddons.ceiling] on passengers as @s[tag=maddons.head] run data modify entity @s item.components."minecraft:custom_model_data".floats[1] set value 1f

## Side left
execute if entity @s[tag=maddons.flip,tag=maddons.side_left] run data modify entity @s item.components."minecraft:custom_model_data".floats[1] set value 3f
execute if entity @s[tag=maddons.flip,tag=maddons.side_left] on passengers as @s[tag=maddons.head] run data modify entity @s item.components."minecraft:custom_model_data".floats[1] set value 2f

## Side right
execute if entity @s[tag=maddons.flip,tag=maddons.side_right] run data modify entity @s item.components."minecraft:custom_model_data".floats[1] set value 3f
execute if entity @s[tag=maddons.flip,tag=maddons.side_right] on passengers as @s[tag=maddons.head] run data modify entity @s item.components."minecraft:custom_model_data".floats[1] set value 2f

execute if entity @s[tag=maddons.flip] store result score @s maddons.animation run time query gametime
execute if entity @s[tag=maddons.flip] run scoreboard players operation @s maddons.animation %= #24000 maddons.constant
execute if entity @s[tag=maddons.flip] run scoreboard players remove @s maddons.animation 19
execute if entity @s[tag=maddons.flip] run scoreboard players operation @s maddons.animation %= #21 maddons.constant
execute if entity @s[tag=maddons.flip] run scoreboard players operation @s maddons.animation *= #1000 maddons.constant
execute if entity @s[tag=maddons.flip] store result entity @s item.components."minecraft:custom_data".magical_addons.colors[0][2] double 0.001 on passengers store result entity @s[tag=maddons.head] item.components."minecraft:custom_data".magical_addons.colors[0][2] double 0.001 on vehicle run scoreboard players operation @s maddons.animation /= #255 maddons.constant

execute on passengers as @s[tag=maddons.head] run data modify entity @s item.components."minecraft:custom_model_data".colors set from entity @s item.components."minecraft:custom_data".magical_addons.colors
data modify entity @s item.components."minecraft:custom_model_data".colors set from entity @s item.components."minecraft:custom_data".magical_addons.colors

data modify entity @s item.components."minecraft:custom_data".angle set value "ground"
execute on passengers as @s[tag=maddons.head] run data modify entity @s item.components."minecraft:custom_data".angle set value "ground"

tag @s add maddons.ground
tag @s remove maddons.ceiling
tag @s remove maddons.side_up
tag @s remove maddons.side_down
tag @s remove maddons.side_right
tag @s remove maddons.side_left

function magical_addons:entity/sculk_spider/scale