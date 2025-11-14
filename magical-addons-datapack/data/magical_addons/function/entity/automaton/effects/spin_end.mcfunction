# entity:automaton/effects/spin_end
# called by: entity:automaton/animate/spin

## Set animation time
scoreboard players set #maddons.temp maddons.temp 80

## Set animation
execute on passengers run data modify entity @s[tag=maddons.head] item.components."minecraft:custom_model_data".floats[1] set value 6f
data modify entity @s item.components."minecraft:custom_model_data".floats[1] set value 6f

## Set start frame for animation
execute store result score @s maddons.animation run time query gametime
scoreboard players operation @s maddons.animation %= #24000 maddons.constant
scoreboard players remove @s maddons.animation 79
scoreboard players add #maddons.temp maddons.temp 1
scoreboard players operation @s maddons.animation %= #maddons.temp maddons.temp
scoreboard players operation @s maddons.animation *= #1000 maddons.constant
execute store result entity @s item.components."minecraft:custom_data".magical_addons.colors[0][2] double 0.001 on passengers store result entity @s[tag=maddons.head] item.components."minecraft:custom_data".magical_addons.colors[0][2] double 0.001 on vehicle run scoreboard players operation @s maddons.animation /= #255 maddons.constant

## Merge start frame into colors
execute on passengers as @s[tag=maddons.head] run data modify entity @s item.components."minecraft:custom_model_data".colors set from entity @s item.components."minecraft:custom_data".magical_addons.colors
data modify entity @s item.components."minecraft:custom_model_data".colors set from entity @s item.components."minecraft:custom_data".magical_addons.colors