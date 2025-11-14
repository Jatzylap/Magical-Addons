# entity:automaton/moves/kick2
# called by: entity:automaton/attack

## Play sound
execute on vehicle run playsound magical_addons:entity.automaton.kick hostile @a ~ ~ ~ 3

## Cease motion
execute on vehicle run attribute @s movement_speed modifier add magical_addons:stop -9999 add_value
execute on vehicle run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

## Set cooldown frame
execute store result score #maddons.temp maddons.temp run scoreboard players set @s maddons.cooldown 37

## Set animation
data modify entity @s item.components."minecraft:custom_model_data".floats[1] set value 10f
data modify entity @s data.magical_addons.attack set value "kick2"

## Set start frame for animation
execute store result score @s maddons.animation run time query gametime
scoreboard players operation @s maddons.animation %= #24000 maddons.constant
scoreboard players remove @s maddons.animation 36
scoreboard players add #maddons.temp maddons.temp 1
scoreboard players operation @s maddons.animation %= #maddons.temp maddons.temp
scoreboard players operation @s maddons.animation *= #1000 maddons.constant
execute store result entity @s item.components."minecraft:custom_data".magical_addons.colors[0][2] double 0.001 run scoreboard players operation @s maddons.animation /= #255 maddons.constant

## Merge start frame into colors
data modify entity @s item.components."minecraft:custom_model_data".colors set from entity @s item.components."minecraft:custom_data".magical_addons.colors