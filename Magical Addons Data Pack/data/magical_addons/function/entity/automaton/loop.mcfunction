# entity:automaton/loop
# called by: main:tick_entity

## Death
execute on vehicle unless data entity @s {DeathTime:0s} on passengers as @s[tag=maddons.entity] run return run function magical_addons:entity/automaton/death

## Hurt
execute store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 on passengers as @s[tag=maddons.head] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 on vehicle run function magical_addons:entity/automaton/hurt

## Move
execute unless score @s maddons.cooldown matches 0.. store success entity @s item.components."minecraft:custom_model_data".floats[1] float 1 run data modify entity @s item.components."minecraft:custom_data".magical_addons.pos set from entity @s Pos

## Rotate Body
execute on vehicle at @s on passengers run rotate @s[tag=maddons.body] ~ 0

## Rotate head
execute unless score @s maddons.cooldown matches 0.. on vehicle at @s unless entity @s[nbt={NoAI:1b}] on passengers if entity @s[tag=maddons.entity,tag=!maddons.automaton.shoot] on passengers facing entity @p[tag=!maddons.invul,distance=..64] eyes run return run rotate @s[tag=maddons.head] ~ 0

## Animate
execute if score @s maddons.cooldown matches 0.. run function magical_addons:entity/automaton/animate with entity @s item.components."minecraft:custom_data".magical_addons