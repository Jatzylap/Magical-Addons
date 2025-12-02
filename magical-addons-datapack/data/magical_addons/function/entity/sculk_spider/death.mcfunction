# entity:sculk_spider/death
# called by: entity:sculk_spider/brain

## Tags
tag @s add maddons.entity.tickable
tag @s remove maddons.entity.brain

## Set rotation
execute on vehicle on passengers run rotate @s ~ 0

## Sound
execute if entity @s[tag=!maddons.entity.baby] run playsound entity.spider.death hostile @a ~ ~ ~ 1
execute if entity @s[tag=maddons.entity.baby] run playsound entity.spider.death hostile @a ~ ~ ~ 1 1.3

## Tick
scoreboard players set @s maddons.death 0
data modify entity @s data.magical_addons.tick_cmd set value "function magical_addons:entity/sculk_spider/death_tick"

## Set hurt
execute on vehicle on passengers run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 1b

## Set data
execute on vehicle on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:13,transformation:{right_rotation:[0f,0f,-1f,0f]}}