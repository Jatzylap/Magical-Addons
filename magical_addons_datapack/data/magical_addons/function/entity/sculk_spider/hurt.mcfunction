# entity:sculk_spider/hurt
# called by: entity:sculk_spider/loop

tag @s add maddons.damage
execute on vehicle run data merge entity @s {NoGravity:0b}
execute on vehicle on passengers on passengers run data modify entity @s[tag=maddons.head] item.components."minecraft:custom_model_data".strings[0] set value "hurt"
execute on vehicle on passengers run data modify entity @s[tag=maddons.body] item.components."minecraft:custom_model_data".strings[0] set value "hurt"
execute on vehicle run data merge entity @s {HurtByTimestamp:0,HurtTime:0s}
scoreboard players set @s maddons.damage 0