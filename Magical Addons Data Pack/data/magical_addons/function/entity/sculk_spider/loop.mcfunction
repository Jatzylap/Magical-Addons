# entity:sculk_spider/loop
# called by: entity:tick

## Death
execute on vehicle unless data entity @s {DeathTime:0s} on passengers as @s[tag=maddons.entity] run return run function magical_addons:entity/sculk_spider/death

## Hurt
execute store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 on passengers as @s[tag=maddons.head] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 on vehicle run function magical_addons:entity/sculk_spider/hurt

## Move
execute store success entity @s[tag=!maddons.flip] item.components."minecraft:custom_model_data".floats[1] float 1 run data modify entity @s item.components."minecraft:custom_data".magical_addons.pos set from entity @s Pos

## Rotate Body
execute unless predicate magical_addons:shared/15_percent on vehicle at @s on passengers run rotate @s[tag=maddons.body] ~ 0

## Rotate head
execute on vehicle at @s on passengers if entity @s[tag=maddons.entity,tag=!maddons.side_right,tag=!maddons.side_left,tag=!maddons.side_up,tag=!maddons.side_down] on passengers run rotate @s[tag=maddons.head] facing entity @p[tag=!maddons.invul,distance=..15] eyes