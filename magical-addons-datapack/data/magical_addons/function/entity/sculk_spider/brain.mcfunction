# entity:sculk_spider/brain
# entity:brain

## Get nbt
execute store result score @s maddons.death on vehicle on vehicle run data get entity @s DeathTime

## Death
execute unless score @s maddons.death matches 0 run return run function magical_addons:entity/sculk_spider/death

## Rotate head
execute if entity @s[tag=maddons.entity.ai] on vehicle on vehicle at @s on passengers on passengers run rotate @s[tag=maddons.bone.head] facing entity @n[tag=!maddons.invul,tag=!maddons.sculk_spider,type=!#magical_addons:invulnerable] eyes
execute store result score #maddons.sculk_spider.head_rot maddons.rotation on vehicle on passengers run data get entity @s[tag=maddons.bone.head] Rotation[0]
execute on vehicle on passengers store result entity @s[tag=maddons.bone.head] Rotation[0] float 1 on vehicle on vehicle store result score #maddons.sculk_spider.head_rot maddons.rotation run data get entity @s Rotation[0]
execute unless entity @n[tag=!maddons.invul,tag=!maddons.sculk_spider,type=!#magical_addons:invulnerable,distance=..16] on vehicle on passengers store result entity @s[tag=maddons.bone.head] Rotation[1] float 1 on vehicle on vehicle store result score #maddons.sculk_spider.head_rot maddons.rotation run data get entity @s Rotation[1]

## Rotate body
execute store result score #maddons.sculk_spider.body_rot maddons.rotation run data get entity @s[tag=maddons.bone.body] Rotation[0]
scoreboard players operation #maddons.sculk_spider.head_rot maddons.rotation -= #maddons.sculk_spider.body_rot maddons.rotation
execute unless score #maddons.sculk_spider.head_rot maddons.rotation matches -45..45 on vehicle on passengers at @s[tag=maddons.bone.head] on vehicle on passengers run rotate @s[tag=!maddons.bone.head] ~ 0

## Move
execute on vehicle on vehicle if predicate magical_addons:entity/sculk_spider_crawl on passengers on passengers as @s[tag=maddons.bone.body] run return run item modify entity @s contents {"function":"minecraft:set_custom_model_data","floats":{"mode":"replace_section","size":1,"offset":0,"values":[2f]}}
execute on vehicle on vehicle if predicate magical_addons:entity/sculk_spider_walk on passengers on passengers as @s[tag=maddons.bone.body] run return run item modify entity @s contents {"function":"minecraft:set_custom_model_data","floats":{"mode":"replace_section","size":1,"offset":0,"values":[1f]}}
execute on vehicle on passengers run item modify entity @s[tag=maddons.bone] contents {"function":"minecraft:set_custom_model_data","floats":{"mode":"replace_section","size":1,"offset":0,"values":[0f]}}