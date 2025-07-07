# entity:automaton/animate/swing1
# called by: entity:automaton/animate

execute if score @s maddons.cooldown matches 0 on passengers store result entity @s[tag=maddons.head] item.components."minecraft:custom_model_data".floats[1] float 1 on vehicle run data modify entity @s item.components."minecraft:custom_model_data".floats[1] set value 0f

execute if score @s maddons.cooldown matches 45 positioned ^2 ^ ^1 rotated ~ 0 run function magical_addons:entity/automaton/effects/swing2_pound