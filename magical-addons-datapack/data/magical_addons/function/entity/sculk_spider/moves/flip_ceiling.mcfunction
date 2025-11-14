# entity:sculk_spider/moves/flip_ceiling
# called by: entity:sculk_spider/check_global

execute on vehicle on vehicle run data merge entity @s {NoGravity:1b}
execute on vehicle on vehicle run attribute @s minecraft:movement_speed base set 0.8
execute if entity @s[tag=!maddons.ceiling] on vehicle on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{left_rotation:[0f,0f,1f,0f]}}

tag @s add maddons.ceiling
tag @s remove maddons.side_left
tag @s remove maddons.side_right
tag @s remove maddons.side_up
tag @s remove maddons.side_down
tag @s remove maddons.ground