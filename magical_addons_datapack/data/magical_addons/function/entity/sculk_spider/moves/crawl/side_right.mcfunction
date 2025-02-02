# entity:sculk_spider/moves/crawl/side_right
# called by: entity:sculk_spider/check

execute if entity @s[tag=!maddons.side_right] run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[0.5f,0f,0f],left_rotation:[0f,0f,-0.707f,.707f]}}
execute if entity @s[tag=!maddons.side_right] on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[0.5f,0f,0f],left_rotation:[0f,0f,-0.707f,.707f]}}
execute on vehicle unless entity @a[dy=-15] run data merge entity @s {NoGravity:1b}
tag @s add maddons.side_right
tag @s remove maddons.side_left
tag @s remove maddons.side_up
tag @s remove maddons.side_down
tag @s remove maddons.ceiling
tag @s remove maddons.ground