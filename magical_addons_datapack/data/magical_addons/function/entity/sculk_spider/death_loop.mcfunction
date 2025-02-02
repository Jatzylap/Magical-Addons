# entity:sculk_spider/death_loop
# called by: entity:sculk_spider/loop

execute if score @s maddons.death matches ..17 run scoreboard players add @s maddons.death 1

execute if score @s[tag=maddons.ground] maddons.death matches 6 run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[0f,-1f,0f],left_rotation:[0f,0f,-1f,0f]}}
execute if score @s[tag=maddons.ground] maddons.death matches 6 on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[0f,-1f,0f],left_rotation:[0f,0f,-1f,0f]}}
execute if score @s[tag=maddons.ceiling] maddons.death matches 6 run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[0f,0.5f,0f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s[tag=maddons.ceiling] maddons.death matches 6 on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[0f,0.5f,0f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s[tag=maddons.side_up] maddons.death matches 6 run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[0f,0f,0.5f],left_rotation:[0.707f,0f,0f,.707f]}}
execute if score @s[tag=maddons.side_up] maddons.death matches 6 on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[0f,0f,0.5f],left_rotation:[0.707f,0f,0f,.707f]}}
execute if score @s[tag=maddons.side_down] maddons.death matches 6 run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[0f,0f,-1f],left_rotation:[-0.707f,0f,0f,.707f]}}
execute if score @s[tag=maddons.side_down] maddons.death matches 6 on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[0f,0f,-1f],left_rotation:[-0.707f,0f,0f,.707f]}}
execute if score @s[tag=maddons.side_left] maddons.death matches 6 run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[0.5f,0f,0f],left_rotation:[0f,0f,-0.707f,.707f]}}
execute if score @s[tag=maddons.side_left] maddons.death matches 6 on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[0.5f,0f,0f],left_rotation:[0f,0f,-0.707f,.707f]}}
execute if score @s[tag=maddons.side_right] maddons.death matches 6 run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[-0.5f,0f,0f],left_rotation:[0f,0f,0.707f,.707f]}}
execute if score @s[tag=maddons.side_right] maddons.death matches 6 on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[-0.5f,0f,0f],left_rotation:[0f,0f,0.707f,.707f]}}

execute if score @s maddons.death matches 18 run function magical_addons:entity/kill