# entity:flying_cow/moves/walk
# called by: entity:flying_cow/check

execute as @s[tag=!maddons.damage,tag=!maddons.death] on vehicle on passengers run data modify entity @s[tag=maddons.body] item.components."minecraft:custom_model_data".strings[0] set value "body_walk_normal"
execute as @s[tag=maddons.damage,tag=!maddons.death] on vehicle on passengers run data modify entity @s[tag=maddons.body] item.components."minecraft:custom_model_data".strings[0] set value "body_walk_hurt"
tag @s add maddons.walk
tag @s remove maddons.idle