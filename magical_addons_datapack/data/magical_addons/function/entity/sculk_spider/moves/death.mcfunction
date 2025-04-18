# entity:sculk_spider/moves/death
# called by: entity:sculk_spider/loop

execute on vehicle run data merge entity @s {NoGravity:0b}
execute on vehicle run tag @s add maddons.death
execute on vehicle if entity @s[tag=!maddons.baby] run playsound entity.spider.death hostile @a ~ ~ ~ 1
execute on vehicle if entity @s[tag=maddons.baby] run playsound entity.spider.death hostile @a ~ ~ ~ 1 1.3

data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 2f
execute on passengers run data modify entity @s[tag=maddons.head] item.components."minecraft:custom_model_data".floats[0] set value 2f

execute store result score @s maddons.animation run time query gametime
scoreboard players operation @s maddons.animation %= #24000 maddons.constant
scoreboard players remove @s maddons.animation 23
scoreboard players operation @s maddons.animation %= #25 maddons.constant
scoreboard players operation @s maddons.animation *= #1000 maddons.constant

execute store result entity @s item.components."minecraft:custom_data".magical_addons.colors[0][2] double 0.001 on passengers store result entity @s[tag=maddons.head] item.components."minecraft:custom_data".magical_addons.colors[0][2] double 0.001 on vehicle run scoreboard players operation @s maddons.animation /= #255 maddons.constant

execute on passengers as @s[tag=maddons.head] run data modify entity @s item.components."minecraft:custom_model_data".colors set from entity @s item.components."minecraft:custom_data".magical_addons.colors
data modify entity @s item.components."minecraft:custom_model_data".colors set from entity @s item.components."minecraft:custom_data".magical_addons.colors