# entity:sculk_spider/moves/crawl/side_down
# called by: entity:sculk_spider/check

execute if entity @s[tag=!maddons.side_down] run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[0f,0f,0.5f],left_rotation:[0.707f,0f,0f,.707f]}}
execute if entity @s[tag=!maddons.side_down] on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[0f,0f,0.5f],left_rotation:[0.707f,0f,0f,.707f]}}
tag @s add maddons.side_down
tag @s remove maddons.side_right
tag @s remove maddons.side_left
tag @s remove maddons.side_up
tag @s remove maddons.ceiling
tag @s remove maddons.ground