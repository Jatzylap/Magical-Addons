# entity:sculk_spider/moves/death_angles/side_up
# called by: entity:sculk_spider/death

execute on passengers run data modify entity @s[tag=maddons.head] item.components."minecraft:custom_model_data".strings[0] set value "head_idle_death_ground"
data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "body_idle_death_ground"
data modify entity @s Rotation[1] set value -88
execute on passengers run data modify entity @s[tag=maddons.head] Rotation[1] set value -88