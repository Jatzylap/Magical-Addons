# entity:flying_cow/idle
# called by: entity:flying_cow/loop

data modify entity @s[tag=!maddons.damage,tag=!maddons.death] item.components."minecraft:custom_model_data".strings[0] set value "body_idle_normal"
data modify entity @s[tag=maddons.damage,tag=!maddons.death] item.components."minecraft:custom_model_data".strings[0] set value "body_idle_hurt"
tag @s remove maddons.walk
tag @s add maddons.idle