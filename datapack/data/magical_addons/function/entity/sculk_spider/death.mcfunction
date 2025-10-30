# entity:sculk_spider/death
# called by: entity:sculk_spider/brain

## Tags
tag @s remove maddons.entity.brain
tag @s add maddons.entity.tickable

## Set idle pose
execute on vehicle on passengers run function magical_addons:entity/sculk_spider/animations/idle/frames/0

## Set rotation
execute on vehicle on vehicle run rotate @s ~ 0
execute on vehicle on passengers as @s[tag=maddons.bone.head] run rotate @s ~ 0

## Sound
execute if entity @s[tag=!maddons.entity.baby] run playsound entity.spider.death hostile @a ~ ~ ~ 1

## Set frame
execute store result entity @s data.magical_addons.frame int 1 run scoreboard players set @s maddons.animation 0

## Set hurt
execute on vehicle on passengers run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 1b

## Set tick
data modify entity @s data.magical_addons.tick_cmd set value "function magical_addons:entity/sculk_spider/animations/death/tick with entity @s data.magical_addons"