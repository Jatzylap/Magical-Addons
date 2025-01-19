# entity:sculk_spider/moves/death_angles/side_down
# called by: entity:sculk_spider/death

execute on vehicle on passengers run data modify entity @s[tag=maddons.head] item.components."minecraft:custom_model_data".strings[0] set value "head_idle_death_ground"
data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "body_idle_death_ground"
execute on vehicle on passengers run data modify entity @s[tag=maddons.part] Rotation[1] set value 89