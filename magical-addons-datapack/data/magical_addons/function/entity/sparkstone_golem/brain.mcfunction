# entity:sparkstone_golem/brain
# entity:brain

## Get nbt
execute store result score @s maddons.death on vehicle on vehicle run data get entity @s DeathTime

## Death
execute unless score @s maddons.death matches 0 run return run function magical_addons:entity/sparkstone_golem/death

## Rotate
execute unless entity @p[distance=..32,tag=!maddons.invul] on vehicle on vehicle at @s on passengers on passengers run rotate @s ~ 0
