# entity:sculk_spider/moves/flip_side_down
# called by: entity:sculk_spider/check_global

execute if entity @s[tag=!maddons.side_down] on vehicle on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0.707f,0f,0f,.707f]}}

tag @s add maddons.side_down
tag @s remove maddons.side_right
tag @s remove maddons.side_left
tag @s remove maddons.side_up
tag @s remove maddons.ceiling
tag @s remove maddons.ground