# entity:sculk_spider/moves/death_angles/ceiling
# called by: entity:sculk_spider/death

execute on vehicle on passengers run data modify entity @s[tag=maddons.head] item.components."minecraft:custom_model_data".strings[0] set value "head_idle_death_ceiling"
data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "body_idle_death_ceiling"