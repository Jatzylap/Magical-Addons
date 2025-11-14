# entity:automaton/moves/reset
# called by: entity:automaton/animate/*

scoreboard players reset @s maddons.cooldown

execute on passengers run data modify entity @s[tag=maddons.head] item.components."minecraft:custom_model_data".floats[1] set value 0f
execute on passengers run data modify entity @s[tag=maddons.head] item.components."minecraft:custom_model_data".strings[1] set value "no_staff"
data modify entity @s item.components."minecraft:custom_model_data".floats[1] set value 0f
data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "no_staff"

execute on vehicle run attribute @s movement_speed base set 0.33
execute on vehicle run attribute @s movement_speed modifier remove magical_addons:stop