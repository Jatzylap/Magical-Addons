# entity:sculk_spider/brain
# called by: entity:brain

## Death
execute on vehicle on vehicle unless data entity @s {DeathTime:0s} on passengers on passengers as @s[tag=maddons.entity.brain] run return run function magical_addons:entity/sculk_spider/death

## Hurt
execute on vehicle on vehicle store success score #maddons.sculk_spider maddons.damage unless data entity @s {HurtTime:0s}
execute on vehicle on passengers store result entity @s item.components."minecraft:custom_model_data".flags[0] byte 1 run scoreboard players get #maddons.sculk_spider maddons.damage

## Rotate head
execute if entity @s[tag=maddons.entity.ai] on vehicle on vehicle at @s on passengers on passengers run rotate @s[tag=maddons.bone.head] facing entity @p[tag=!maddons.invul,gamemode=!creative,gamemode=!spectator,distance=..16] eyes
execute on vehicle on passengers store result entity @s[tag=maddons.bone.head] Rotation[0] float 1 on vehicle on vehicle store result score #maddons.sculk_spider.head_rot maddons.rotation run data get entity @s Rotation[0]

### get x rotation
#execute if entity @s[tag=maddons.entity.ai] on vehicle on vehicle at @s on passengers on passengers run rotate @s[tag=maddons.bone.head] facing entity @p[tag=!maddons.invul,gamemode=!creative,gamemode=!spectator,distance=..16] eyes
#execute on passengers store result entity @s[tag=maddons.bone.head] Rotation[0] float 1 on vehicle on vehicle store result score #maddons.sculk_spider.head_rot maddons.rotation run data get entity @s Rotation[0]
#execute on vehicle on passengers as @s[tag=maddons.bone.head] store result score #maddons.sculk_spider.y_rot maddons.rotation run data get entity @s Rotation[1]
### get y rotation

### if pitch=-90°: translation[0.0,-0.25,0.0]
### if pitch=0°: translation[0.0,-0.25,0.453125]
### if pitch=90°: translation[0.0,0.25,0.5]

### pitch = [-90,90]
### margin = 0.25 - (-0.25)
### slice = margin / 90
### if pitch == ..-1 --- -0.25
### if pitch == 0.. --- delta_y = slice * pitch - 0.25
#scoreboard players set #maddons.sculk_spider.slice maddons.rotation 5555
#execute store result score #maddons.sculk_spider.delta_y maddons.rotation run scoreboard players operation #maddons.sculk_spider.slice maddons.rotation *= #maddons.sculk_spider.y_rot maddons.rotation
#execute if score #maddons.sculk_spider.y_rot maddons.rotation matches ..-1 on vehicle on passengers store result entity @s[tag=maddons.bone.head] transformation.translation[1] float 0.01 run scoreboard players set #maddons.sculk_spider.delta_y maddons.rotation -25
#execute if score #maddons.sculk_spider.y_rot maddons.rotation matches 0.. on vehicle on passengers store result entity @s[tag=maddons.bone.head] transformation.translation[1] float 0.000001 run scoreboard players operation #maddons.sculk_spider.delta_y maddons.rotation -= #250000 maddons.constant

### pitch = [-90,90]
#### if pitch == ..0 --- slice = (0.453125 - 0.0) / 90
#### if pitch == 1.. --- slice = (0.5 - 0.453125 = 0.046875) / 90
### delta_z = slice * pitch_z + 0.453125
#execute if score #maddons.sculk_spider.y_rot maddons.rotation matches ..0 run scoreboard players set #maddons.sculk_spider.slice maddons.rotation 5034
#execute if score #maddons.sculk_spider.y_rot maddons.rotation matches 1.. run scoreboard players set #maddons.sculk_spider.slice maddons.rotation 520
#execute store result score #maddons.sculk_spider.delta_z maddons.rotation run scoreboard players operation #maddons.sculk_spider.slice maddons.rotation *= #maddons.sculk_spider.y_rot maddons.rotation
#execute on vehicle on passengers store result entity @s[tag=maddons.bone.head] transformation.translation[2] float 0.000001 run scoreboard players operation #maddons.sculk_spider.delta_z maddons.rotation += #453125 maddons.constant

## Rotate body
execute store result score #maddons.sculk_spider.body_rot maddons.rotation run data get entity @s[tag=maddons.bone.body] Rotation[0]
scoreboard players operation #maddons.sculk_spider.head_rot maddons.rotation -= #maddons.sculk_spider.body_rot maddons.rotation
execute unless score #maddons.sculk_spider.head_rot maddons.rotation matches -45..45 on vehicle on passengers at @s[tag=maddons.bone.head] on vehicle on passengers run rotate @s[tag=!maddons.bone.head] ~ 0

## Move
execute store success score @s maddons.move run data modify storage magical_addons:temp data.magical_addons.sculk_spider.pos set from entity @s Pos
### 'return' in command seems to limit 'on passengers' to a single passenger (in arbitrary order)
execute if score @s[tag=maddons.entity.tickable] maddons.move matches 0 on vehicle on passengers run function magical_addons:entity/sculk_spider/animations/idle/frames/0
execute if score @s maddons.move matches 0 run return run tag @s remove maddons.entity.tickable
tag @s add maddons.entity.tickable