# item:dagger/sparkstone_orb/explosion_effects/2
# called by: item:dagger/sparkstone_orb/explosion_effects/1

tag @s add maddons.summoned

## Pick colour
execute store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1 run random value 0..2

## LX -45° / 45°
execute store result score @s maddons.temp run random value 0..3
execute if score @s maddons.temp matches 0 run data merge entity @s {transformation:{left_rotation:[-0.383f,0.0f,-0.383f,0.841f]}}
execute if score @s maddons.temp matches 1 run data merge entity @s {transformation:{left_rotation:[0.383f,0.0f,-0.383f,0.841f]}}
execute if score @s maddons.temp matches 2 run data merge entity @s {transformation:{left_rotation:[0.383f,0.0f,0.383f,0.841f]}}
execute if score @s maddons.temp matches 3 run data merge entity @s {transformation:{left_rotation:[-0.383f,0.0f,0.383f,0.841f]}}

## LY -45° / 0° / 45°
execute store result score @s maddons.temp run random value 0..2
execute if score @s maddons.temp matches 1 run data modify entity @s transformation.left_rotation[1] set value -0.383f
execute if score @s maddons.temp matches 2 run data modify entity @s transformation.left_rotation[1] set value 0.383f
execute if score @s maddons.temp matches 1.. run data modify entity @s transformation.left_rotation[3] set value 0.749f

## RX -15° / 15°
execute store result score @s maddons.temp run random value 0..1
$execute if score @s maddons.temp matches 0 run data merge entity @s {start_interpolation:-1,interpolation_duration:180,transformation:{translation:[$(t_x)f,0.0f,$(t_z)f],right_rotation:[-0.131f,0.0f,0.0f,0.991f],scale:[35.,35.,35.]}}
$execute if score @s maddons.temp matches 1 run data merge entity @s {start_interpolation:-1,interpolation_duration:180,transformation:{translation:[$(t_x)f,0.0f,$(t_z)f],right_rotation:[0.131f,0.0f,0.0f,0.991f],scale:[35.,35.,35.]}}

## Shift colour
execute if predicate magical_addons:shared/25_percent store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s maddons.animation 1

## Randomise time
execute store result score @s maddons.move run random value 0..30

## Register
function magical_addons:dev/register_entity {id:"sparkstone_blast",cmd:"function magical_addons:item/dagger/sparkstone_orb/explosion_effects/3"}