# entity:sculk_spider/flip
# called by: entity:sculk_spider/check_global

data modify entity @s item.components."minecraft:custom_model_data".floats[1] set value 0f
execute on passengers as @s[tag=maddons.head] run data modify entity @s item.components."minecraft:custom_model_data".floats[1] set value 0f

data modify entity @s item.components."minecraft:custom_model_data".strings[1] set from entity @s item.components."minecraft:custom_data".magical_addons.angle
execute on passengers as @s[tag=maddons.head] run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set from entity @s item.components."minecraft:custom_data".magical_addons.angle

tag @s remove maddons.flip