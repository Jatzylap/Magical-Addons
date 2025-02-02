# entity:sculk_spider/moves/fall
# called by: entity:sculk_spider/check

execute on vehicle run data merge entity @s {NoGravity:0b}
execute if entity @s[tag=!maddons.ground] run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[0f,0.5f,0f],left_rotation:[0f,0f,0f,1f]}}
execute if entity @s[tag=!maddons.ground] on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[0f,0.5f,0f],left_rotation:[0f,0f,0f,1f]}}
tag @s add maddons.ground
tag @s remove maddons.ceiling
tag @s remove maddons.side_up
tag @s remove maddons.side_down
tag @s remove maddons.side_right
tag @s remove maddons.side_left