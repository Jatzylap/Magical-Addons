# entity:automaton/animate/pound
# called by: entity:tick

execute if score @s maddons.cooldown matches 0 on vehicle on passengers run function magical_addons:entity/automaton/moves/reset

## Pound
execute if score @s[tag=maddons.entity.brain] maddons.cooldown matches 35 on vehicle on vehicle at @s positioned ^-2 ^ ^6 run function magical_addons:entity/automaton/effects/pound_hit
execute if score @s[tag=maddons.entity.brain] maddons.cooldown matches 35 on vehicle on vehicle at @s positioned ^2 ^ ^6 run function magical_addons:entity/automaton/effects/pound_hit
execute if score @s maddons.cooldown matches 24 run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 7f
execute if score @s maddons.cooldown matches 24 run scoreboard players set @s maddons.animation -1
execute unless score @s maddons.cooldown matches 25..33 store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1 run scoreboard players add @s maddons.animation 1

scoreboard players remove @s maddons.cooldown 1