# entity:sculk_spider/crawl_angles/ceiling
# called by: entity:sculk_spider/check

execute on vehicle run data merge entity @s {NoGravity:1b}
execute on vehicle run attribute @s minecraft:movement_speed base set 0.8
execute on vehicle on passengers run data modify entity @s[tag=maddons.part] item.components."minecraft:custom_model_data".colors[0] set value 127
tag @s add maddons.ceiling
tag @s remove maddons.side_left
tag @s remove maddons.side_right
tag @s remove maddons.side_up
tag @s remove maddons.side_down
tag @s remove maddons.ground
execute if entity @a[dy=-15] run function magical_addons:entity/sculk_spider/moves/fall
execute as @s[tag=maddons.ceiling] on vehicle on passengers run data merge entity @s[tag=maddons.part] {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[0f,-0.25f,0f],left_rotation:[0f,0f,0f,1f]}}
execute as @s[tag=!maddons.ceiling] on vehicle on passengers run data merge entity @s[tag=maddons.part] {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[0f,-0.25f,0f],left_rotation:[0f,1f,0f,0f]}}