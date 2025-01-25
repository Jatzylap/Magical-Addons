# entity:flying_cow/hurt
# called by: entity:flying_cow/loop

tag @s add maddons.damage
execute on vehicle run data merge entity @s {NoGravity:0b}
execute on passengers run data modify entity @s[tag=maddons.head] item.components."minecraft:custom_model_data".strings[0] set value "head_idle_hurt"
data modify entity @s[tag=maddons.body] item.components."minecraft:custom_model_data".strings[0] set value "body_idle_hurt"
execute on vehicle run data merge entity @s {HurtByTimestamp:0,HurtTime:0s}
scoreboard players set @s maddons.damage 0