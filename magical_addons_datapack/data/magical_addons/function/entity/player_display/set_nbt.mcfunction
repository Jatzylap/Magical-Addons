# entity:player_display/set_nbt
# called by: entity:player_display/summon

execute on passengers run data merge entity @s[tag=maddons.head] {transformation:[-1.0f,0.0f,1.2246467991473532e-16f,0.0f,0.0f,1.0f,0.0f,1.4375f,-1.2246467991473532e-16f,0.0f,-1.0f,0.0f,0.0f,0.0f,0.0f,1.0f],start_interpolation:-1}
execute on passengers run data merge entity @s[tag=maddons.right_arm] {transformation:[-1.0f,0.0f,1.2246467991473532e-16f,-0.25f,0.0f,1.0f,0.0f,-1022.5625f,-1.2246467991473532e-16f,0.0f,-1.0f,-3.061616997868383e-17f,0.0f,0.0f,0.0f,1.0f],start_interpolation:-1}
execute on passengers run data merge entity @s[tag=maddons.left_arm] {transformation:[-1.0f,0.0f,1.2246467991473532e-16f,0.25f,0.0f,1.0f,0.0f,-2046.5625f,-1.2246467991473532e-16f,0.0f,-1.0f,3.061616997868383e-17f,0.0f,0.0f,0.0f,1.0f],start_interpolation:-1}
execute on passengers run data merge entity @s[tag=maddons.right_leg] {transformation:[-1.0f,0.0f,1.2246467991473532e-16f,-0.125f,0.0f,1.0f,0.0f,-4095.25f,-1.2246467991473532e-16f,0.0f,-1.0f,-1.5308084989341915e-17f,0.0f,0.0f,0.0f,1.0f],start_interpolation:-1}
execute on passengers run data merge entity @s[tag=maddons.left_leg] {transformation:[-1.0f,0.0f,1.2246467991473532e-16f,0.125f,0.0f,1.0f,0.0f,-5119.25f,-1.2246467991473532e-16f,0.0f,-1.0f,1.5308084989341915e-17f,0.0f,0.0f,0.0f,1.0f],start_interpolation:-1}
execute on passengers run data merge entity @s[tag=maddons.torso] {transformation:[-1.0f,0.0f,1.2246467991473532e-16f,0.0f,0.0f,1.0f,0.0f,-3070.5625f,-1.2246467991473532e-16f,0.0f,-1.0f,0.0f,0.0f,0.0f,0.0f,1.0f],start_interpolation:-1}

tp @s ~ ~ ~ ~ 0
execute at @s on passengers run rotate @s ~ 0

function magical_addons:dev/register_entity {cmd:"function magical_addons:entity/player_display/loop"}

execute on passengers run tag @s add maddons.summoned
tag @s add maddons.summoned