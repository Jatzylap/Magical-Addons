# entity:sculk_spider/brain
# called by: entity:brain

## Death
execute on vehicle on vehicle unless data entity @s {DeathTime:0s} on passengers on passengers as @s[tag=maddons.entity.brain] run return run function magical_addons:entity/sculk_spider/death

## Hurt
execute on vehicle on passengers store result entity @s item.components."minecraft:custom_model_data".flags[0] byte 1 on vehicle on vehicle unless data entity @s {HurtTime:0s}

## Rotate head
execute if entity @s[tag=maddons.entity.ai] on vehicle on vehicle at @s on passengers on passengers run rotate @s[tag=maddons.bone.head] facing entity @n[tag=!maddons.invul,tag=!maddons.sculk_spider,type=!#magical_addons:invulnerable] eyes
execute store result score #maddons.sculk_spider.head_rot maddons.rotation on vehicle on passengers run data get entity @s[tag=maddons.bone.head] Rotation[0]
execute on vehicle on passengers store result entity @s[tag=maddons.bone.head] Rotation[0] float 1 on vehicle on vehicle store result score #maddons.sculk_spider.head_rot maddons.rotation run data get entity @s Rotation[0]
execute unless entity @n[tag=!maddons.invul,tag=!maddons.sculk_spider,type=!#magical_addons:invulnerable,distance=..16] on vehicle on passengers store result entity @s[tag=maddons.bone.head] Rotation[1] float 1 on vehicle on vehicle store result score #maddons.sculk_spider.head_rot maddons.rotation run data get entity @s Rotation[1]

## Rotate body
execute store result score #maddons.sculk_spider.body_rot maddons.rotation run data get entity @s[tag=maddons.bone.body] Rotation[0]
scoreboard players operation #maddons.sculk_spider.head_rot maddons.rotation -= #maddons.sculk_spider.body_rot maddons.rotation
execute unless score #maddons.sculk_spider.head_rot maddons.rotation matches -45..45 on vehicle on passengers at @s[tag=maddons.bone.head] on vehicle on passengers run rotate @s[tag=!maddons.bone.head] ~ 0

## Speed
execute store result score #maddons.sculk_spider.motion.x maddons.move on vehicle on vehicle run data get entity @s Motion[0] 1000
execute store result score #maddons.sculk_spider.motion.y maddons.move on vehicle on vehicle run data get entity @s Motion[1] 1000
execute store result score #maddons.sculk_spider.motion.z maddons.move on vehicle on vehicle run data get entity @s Motion[2] 1000
execute if score #maddons.sculk_spider.motion.x maddons.move matches ..-1 run scoreboard players operation #maddons.sculk_spider.motion.x maddons.move *= #-1 maddons.constant
execute if score #maddons.sculk_spider.motion.y maddons.move matches ..-1 run scoreboard players operation #maddons.sculk_spider.motion.y maddons.move *= #-1 maddons.constant
execute if score #maddons.sculk_spider.motion.z maddons.move matches ..-1 run scoreboard players operation #maddons.sculk_spider.motion.z maddons.move *= #-1 maddons.constant
scoreboard players operation #maddons.sculk_spider.motion.x maddons.move += #maddons.sculk_spider.motion.y maddons.move
execute store result score #maddons.sculk_spider.speed maddons.move run scoreboard players operation #maddons.sculk_spider.motion.x maddons.move += #maddons.sculk_spider.motion.z maddons.move

## Move
execute store success entity @s item.components."minecraft:custom_model_data".floats[0] float 1 store success score @s maddons.move run data modify entity @s data.magical_addons.pos set from entity @s Pos
execute if score @s maddons.move matches 1 if score #maddons.sculk_spider.speed maddons.move matches 160.. run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 2f