# entity:sculk_spider/hurt_loop
# called by: entity:sculk_spider/loop

execute if score @s maddons.damage matches ..9 on vehicle run data modify entity @s HurtByTimestamp set value 0
execute if score @s maddons.damage matches ..9 run scoreboard players add @s maddons.damage 1
execute if score @s maddons.damage matches 10 on passengers run data modify entity @s[tag=maddons.head] item.components."minecraft:custom_model_data".strings[0] set value "head_idle_normal"
execute if score @s maddons.damage matches 10 run data modify entity @s[tag=maddons.body] item.components."minecraft:custom_model_data".strings[0] set value "body_idle_normal"
execute if score @s maddons.damage matches 10 run tag @s remove maddons.damage
execute if score @s maddons.damage matches 10 run scoreboard players reset @s maddons.damage