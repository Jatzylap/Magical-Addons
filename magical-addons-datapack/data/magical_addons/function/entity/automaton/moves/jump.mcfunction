# entity:automaton/moves/jump
# called by: entity:automaton/attack

execute on vehicle run rotate @s facing entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..32] feet

## Play sound
execute on vehicle run playsound magical_addons:entity.automaton.attack hostile @a ~ ~ ~ 3

## Cease motion
execute on vehicle run attribute @s movement_speed modifier add magical_addons:stop -9999 add_value
execute on vehicle run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

## Set animation time
scoreboard players set #maddons.temp maddons.temp 40

## Set cooldown frame
scoreboard players set @s maddons.cooldown 199

## Set animation
execute on passengers run data modify entity @s[tag=maddons.head] item.components."minecraft:custom_model_data".floats[1] set value 2f
data modify entity @s item.components."minecraft:custom_model_data".floats[1] set value 2f
data modify entity @s data.magical_addons.attack set value "jump"

## Set start frame for animation
execute store result score @s maddons.animation run time query gametime
scoreboard players operation @s maddons.animation %= #24000 maddons.constant
scoreboard players remove @s maddons.animation 39
scoreboard players add #maddons.temp maddons.temp 1
scoreboard players operation @s maddons.animation %= #maddons.temp maddons.temp
scoreboard players operation @s maddons.animation *= #1000 maddons.constant
execute store result entity @s item.components."minecraft:custom_data".magical_addons.colors[0][2] double 0.001 on passengers store result entity @s[tag=maddons.head] item.components."minecraft:custom_data".magical_addons.colors[0][2] double 0.001 on vehicle run scoreboard players operation @s maddons.animation /= #255 maddons.constant

## Merge start frame into colors
execute on passengers as @s[tag=maddons.head] run data modify entity @s item.components."minecraft:custom_model_data".colors set from entity @s item.components."minecraft:custom_data".magical_addons.colors
data modify entity @s item.components."minecraft:custom_model_data".colors set from entity @s item.components."minecraft:custom_data".magical_addons.colors