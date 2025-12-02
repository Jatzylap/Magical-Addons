# entity:automaton/animate/reset
# called by: entity:automaton/animate/*

execute on vehicle on vehicle run attribute @s movement_speed modifier remove magical_addons:stop

## Reset flags
tag @s[tag=maddons.entity.brain] remove maddons.entity.attack
tag @s[tag=maddons.entity.brain] remove maddons.shoot
tag @s[tag=maddons.entity.brain] remove maddons.spin
tag @s[tag=maddons.entity.brain] remove maddons.pound

## Reset animation
tag @s[tag=!maddons.entity.brain] remove maddons.entity.tickable
scoreboard players reset @s maddons.cooldown
scoreboard players reset @s maddons.animation
data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 0f
data remove entity @s[tag=!maddons.entity.brain] data
data merge entity @s[tag=maddons.entity.brain] {data:{magical_addons:{tick_cmd:"execute on vehicle on passengers unless score @s maddons.cooldown matches 0.. store result entity @s item.components.\"minecraft:custom_model_data\".floats[1] float 1 run data get storage magical_addons:tick data.entity.automaton.animations.walk.frame",attack:{id:""}}}}