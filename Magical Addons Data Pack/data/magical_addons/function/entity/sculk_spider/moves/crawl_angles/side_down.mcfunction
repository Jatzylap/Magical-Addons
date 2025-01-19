# entity:sculk_spider/crawl_angles/side_down
# called by: entity:sculk_spider/check

execute on vehicle on passengers run data merge entity @s[tag=maddons.part,tag=!maddons.side_down] {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[0f,0f,0f],left_rotation:[-.717f,0f,0f,.697f]}}
tag @s add maddons.side_down
tag @s remove maddons.side_right
tag @s remove maddons.side_left
tag @s remove maddons.side_up
tag @s remove maddons.ceiling
tag @s remove maddons.ground