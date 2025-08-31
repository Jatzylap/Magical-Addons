# entity:sculk_spider/loop
# called by: entity:tick_entity

## Death
execute on vehicle unless data entity @s {DeathTime:0s} on passengers as @s[tag=maddons.entity] run return run function magical_addons:entity/sculk_spider/death

## Hurt
execute store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 on passengers as @s[tag=maddons.head] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 on vehicle run function magical_addons:entity/sculk_spider/hurt

## Move
execute store success entity @s[tag=!maddons.flip] item.components."minecraft:custom_model_data".floats[1] float 1 run data modify entity @s item.components."minecraft:custom_data".magical_addons.pos set from entity @s Pos

## Rotate
execute on vehicle at @s on passengers on passengers run rotate @s[tag=maddons.head] ~ ~
execute on passengers as @s[tag=maddons.head] run data modify entity @s Rotation[1] set from entity @s data.magical_addons.rotation_y
execute store result score #maddons.sculk_spider.head_rot maddons.rotation on passengers run data get entity @s[tag=maddons.head] Rotation[0]
execute store result score #maddons.sculk_spider.body_rot maddons.rotation on vehicle run data get entity @s Rotation[0]
scoreboard players operation #maddons.sculk_spider.head_rot maddons.rotation -= #maddons.sculk_spider.body_rot maddons.rotation
execute unless score #maddons.sculk_spider.head_rot maddons.rotation matches -45..45 on passengers at @s[tag=maddons.head] on vehicle run rotate @s[tag=maddons.body] ~ 0