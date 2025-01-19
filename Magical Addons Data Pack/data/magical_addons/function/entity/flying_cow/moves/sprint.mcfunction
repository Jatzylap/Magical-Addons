# entity:flying_cow/moves/sprint
# called by: entity:flying_cow/hurt

execute as @s[tag=!maddons.damage,tag=!maddons.death] on vehicle on passengers run data modify entity @s[tag=maddons.body] item.components."minecraft:custom_model_data".strings[0] set value "body_sprint_normal"
execute as @s[tag=maddons.damage,tag=!maddons.death] on vehicle on passengers run data modify entity @s[tag=maddons.body] item.components."minecraft:custom_model_data".strings[0] set value "body_sprint_hurt"
tag @s add maddons.walk
tag @s remove maddons.idle