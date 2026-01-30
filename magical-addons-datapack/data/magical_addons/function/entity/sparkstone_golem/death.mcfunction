# entity:sparkstone_golem/death
# called by: entity:sparkstone_golem/brain

## Tags
tag @s add maddons.entity.tickable
tag @s remove maddons.entity.brain

## Set rotation
execute on vehicle on passengers run rotate @s ~ 0

## Sound
playsound entity.iron_golem.death hostile @a ~ ~ ~ 1

## Tick
scoreboard players set @s maddons.death 0
data modify entity @s data.magical_addons.tick_cmd set value "function magical_addons:entity/sparkstone_golem/death_tick"

## Set hurt
execute on vehicle on passengers run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 1b

## Set data
execute on vehicle on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:13,transformation:{right_rotation:[0f,0f,-0.707f,0.707f]}}