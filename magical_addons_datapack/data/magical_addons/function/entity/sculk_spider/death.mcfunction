# entity:sculk_spider/death
# called by: entity:sculk_spider/loop

tag @s add maddons.death
execute on vehicle run data merge entity @s {NoGravity:0b}

## Set angle
execute if entity @s[tag=maddons.ground] run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[.707f,-.3f,.0f],left_rotation:[0f,0f,-.707f,.707f]}}
execute if entity @s[tag=maddons.ceiling] run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[.707f,-.3f,.0f],left_rotation:[0f,0f,0.707f,0.707f]}}
execute if entity @s[tag=maddons.side_left] run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[0f,0.5f,0f],left_rotation:[0f,0f,0f,1f]}}
execute if entity @s[tag=maddons.side_right] run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[0f,-1f,0f],left_rotation:[0f,0f,1f,0f]}}
### not done
execute if entity @s[tag=maddons.side_up] run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:6.5,transformation:{left_rotation:[.0,.0,-1.,.0]}}
execute if entity @s[tag=maddons.side_down] run data merge entity @s[tag=maddons.body] {start_interpolation:-1,interpolation_duration:6.5,transformation:{left_rotation:[.0,.0,-1.,.0]}}

execute if entity @s[tag=maddons.ground] on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[.707f,-.3f,.0f],left_rotation:[0f,0f,-.707f,.707f]}}
execute if entity @s[tag=maddons.ceiling] on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[.707f,-.3f,.0f],left_rotation:[0f,0f,0.707f,0.707f]}}
execute if entity @s[tag=maddons.side_left] on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[0f,0.5f,0f],left_rotation:[0f,0f,0f,1f]}}
execute if entity @s[tag=maddons.side_right] on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:6.5,transformation:{translation:[0f,-1f,0f],left_rotation:[0f,0f,1f,0f]}}
### not done
execute if entity @s[tag=maddons.side_up] on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:6.5,transformation:{left_rotation:[.0,.0,-1.,.0]}}
execute if entity @s[tag=maddons.side_down] on passengers run data merge entity @s[tag=maddons.head] {start_interpolation:-1,interpolation_duration:6.5,transformation:{left_rotation:[.0,.0,-1.,.0]}}

## Set animation duration
scoreboard players set @s maddons.death 0