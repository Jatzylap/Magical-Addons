# entity:flying_cow/moves/death_angles/ground
# called by: entity:flying_cow/death

execute on passengers run data modify entity @s[tag=maddons.wings,tag=maddons.extended] item.components."minecraft:custom_model_data".strings[0] set value "extended_death"
execute on passengers run data modify entity @s[tag=maddons.wings,tag=maddons.retracted] item.components."minecraft:custom_model_data".strings[0] set value "retracted_death"
execute on passengers run data modify entity @s[tag=maddons.wings,tag=maddons.extend] item.components."minecraft:custom_model_data".strings[0] set value "extend_death"
execute on passengers run data modify entity @s[tag=maddons.wings,tag=maddons.retract] item.components."minecraft:custom_model_data".strings[0] set value "retract_death"
execute on passengers run data modify entity @s[tag=maddons.head] item.components."minecraft:custom_model_data".strings[0] set value "head_idle_death"
data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "body_idle_death"