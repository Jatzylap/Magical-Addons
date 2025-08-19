# entity:automaton/moves/shoot
# called by: entity:automaton/attack

## Play sound
execute on vehicle run playsound magical_addons:entity.automaton.angry hostile @a ~ ~ ~ 3

## Change step sound duration
execute on vehicle run data modify entity @s data.magical_addons.sound_time set value 2.5

## Cease motion
execute on vehicle run attribute @s movement_speed modifier add magical_addons:stop -9999 add_value
execute on vehicle run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

## Set cooldown frame
execute store result score #maddons.temp maddons.temp run scoreboard players set @s maddons.cooldown 140

## Set animation
data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value ""
data modify entity @s item.components."minecraft:custom_model_data".floats[1] set value 7f
data modify entity @s item.components."minecraft:custom_data".magical_addons merge value {attack:"drop_staff"}

## Set start frame for animation
execute store result score @s maddons.animation run time query gametime
scoreboard players operation @s maddons.animation %= #24000 maddons.constant
scoreboard players remove @s maddons.animation 139
scoreboard players add #maddons.temp maddons.temp 1
scoreboard players operation @s maddons.animation %= #maddons.temp maddons.temp
scoreboard players operation @s maddons.animation *= #1000 maddons.constant
execute store result entity @s item.components."minecraft:custom_data".magical_addons.colors[0][2] double 0.001 on passengers store result entity @s[tag=maddons.head] item.components."minecraft:custom_data".magical_addons.colors[0][2] double 0.001 on vehicle run scoreboard players operation @s maddons.animation /= #255 maddons.constant

## Merge start frame into colors
execute on passengers as @s[tag=maddons.head] run data modify entity @s item.components."minecraft:custom_model_data".colors set from entity @s item.components."minecraft:custom_data".magical_addons.colors
data modify entity @s item.components."minecraft:custom_model_data".colors set from entity @s item.components."minecraft:custom_data".magical_addons.colors