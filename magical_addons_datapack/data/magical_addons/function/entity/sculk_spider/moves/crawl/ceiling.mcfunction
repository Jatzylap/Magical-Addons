# entity:sculk_spider/moves/crawl/ceiling
# called by: entity:sculk_spider/check

execute on vehicle run data merge entity @s {NoGravity:1b}
execute on vehicle run attribute @s minecraft:movement_speed base set 0.8
tag @s add maddons.ceiling
tag @s remove maddons.side_left
tag @s remove maddons.side_right
tag @s remove maddons.side_up
tag @s remove maddons.side_down
tag @s remove maddons.ground
data merge entity @s {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[0f,-1f,0f],left_rotation:[0f,0f,1f,0f]}}
execute on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[0f,-1f,0f],left_rotation:[0f,0f,1f,0f]}}