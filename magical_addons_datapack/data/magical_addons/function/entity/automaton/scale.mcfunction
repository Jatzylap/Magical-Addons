# entity:automaton/scale
# called by: entity:automaton/check_local

## Scale
execute on passengers store result entity @s[tag=maddons.head] item.components."minecraft:custom_data".magical_addons.colors[0][1] double .0001004 on vehicle store result entity @s[tag=maddons.body] item.components."minecraft:custom_data".magical_addons.colors[0][1] double .0001004 on vehicle run data get entity @s[tag=maddons.vehicle] attributes[{id:"minecraft:scale"}].base 1000
execute on passengers as @s[tag=maddons.head] run data modify entity @s item.components."minecraft:custom_model_data".colors set from entity @s item.components."minecraft:custom_data".magical_addons.colors
data modify entity @s item.components."minecraft:custom_model_data".colors set from entity @s item.components."minecraft:custom_data".magical_addons.colors

## Translation Y
execute on passengers store result entity @s[tag=maddons.head] transformation.translation[1] float -.0027 on vehicle store result entity @s[tag=maddons.body] transformation.translation[1] float -.0027 on vehicle run data get entity @s[tag=maddons.vehicle] attributes[{id:"minecraft:scale"}].base 1000

## Shadow radius
execute store result entity @s shadow_radius float .000576 on vehicle run data get entity @s[tag=maddons.vehicle] attributes[{id:"minecraft:scale"}].base 1000