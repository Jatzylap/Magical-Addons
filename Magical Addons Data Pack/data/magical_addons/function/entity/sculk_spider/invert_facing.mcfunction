# entity:sculk_spider/invert_facing
# called by: entity:sculk_spider/loop

scoreboard players set @s maddons.irotation 180
execute store result score @s maddons.rotation on vehicle run data get entity @s Rotation[0]
execute store result score #maddons.entity maddons.irotation run scoreboard players operation @s maddons.irotation -= @s maddons.rotation
execute if predicate magical_addons:shared/15_percent on vehicle on passengers store result entity @s[tag=maddons.body] Rotation[0] float 1 run scoreboard players get #maddons.entity maddons.irotation
execute on vehicle on passengers store result entity @s[tag=maddons.head] Rotation[0] float 1 run scoreboard players get #maddons.entity maddons.irotation
execute on vehicle on passengers store result entity @s[tag=maddons.head] Rotation[1] float 1 on vehicle run data get entity @s Rotation[1]