# entity:automaton/brain
# called by: entity:brain

## Death
execute on vehicle on vehicle unless data entity @s {DeathTime:0s} run return run function magical_addons:entity/automaton/death

## Hurt
execute on vehicle on passengers store result entity @s item.components."minecraft:custom_model_data".flags[0] byte 1 on vehicle on vehicle unless data entity @s {HurtTime:0s}

## Rotate body
execute if entity @s[tag=!maddons.shoot,tag=!maddons.spin,tag=!maddons.pound] on vehicle on vehicle at @s on passengers on passengers run rotate @s ~ 0

## Rotate head
execute if entity @s[tag=maddons.entity.ai,tag=!maddons.shoot,tag=!maddons.spin,tag=!maddons.pound] at @s facing entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,distance=..64] eyes run rotate @s ~ 0

## Speed
execute store result score #maddons.automaton.motion.x maddons.move on vehicle on vehicle run data get entity @s Motion[0] 1000
execute store result score #maddons.automaton.motion.y maddons.move on vehicle on vehicle run data get entity @s Motion[1] 1000
execute store result score #maddons.automaton.motion.z maddons.move on vehicle on vehicle run data get entity @s Motion[2] 1000
execute if score #maddons.automaton.motion.x maddons.move matches ..-1 run scoreboard players operation #maddons.automaton.motion.x maddons.move *= #-1 maddons.constant
execute if score #maddons.automaton.motion.y maddons.move matches ..-1 run scoreboard players operation #maddons.automaton.motion.y maddons.move *= #-1 maddons.constant
execute if score #maddons.automaton.motion.z maddons.move matches ..-1 run scoreboard players operation #maddons.automaton.motion.z maddons.move *= #-1 maddons.constant
scoreboard players operation #maddons.automaton.motion.x maddons.move += #maddons.automaton.motion.y maddons.move
execute store result score #maddons.automaton.speed maddons.move run scoreboard players operation #maddons.automaton.motion.x maddons.move += #maddons.automaton.motion.z maddons.move

## Move
execute on vehicle on passengers unless score @s maddons.cooldown matches 0.. store success entity @s item.components."minecraft:custom_model_data".floats[0] float 1 store success score @s maddons.move run data modify entity @s data.magical_addons.pos set from entity @s Pos
#### Walk
execute if score @s maddons.move matches 1 unless score @s maddons.cooldown matches 0.. unless score #maddons.automaton.speed maddons.move matches 200.. run data merge entity @s {data:{magical_addons:{tick_cmd:"execute on vehicle on passengers unless score @s maddons.cooldown matches 0.. store result entity @s item.components.\"minecraft:custom_model_data\".floats[1] int 1 run data get storage magical_addons:tick data.entity.automaton.animations.walk.frame"}}}
execute if score @s maddons.move matches 1 unless score @s maddons.cooldown matches 0.. unless score #maddons.automaton.speed maddons.move matches 200.. on vehicle on vehicle run return run data merge entity @s {data:{magical_addons:{sound_time:5}}}
#### Run
execute if score @s maddons.move matches 1 unless score @s maddons.cooldown matches 0.. if score #maddons.automaton.speed maddons.move matches 200.. on vehicle on passengers unless score @s maddons.cooldown matches 0.. run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 2f
execute if score @s maddons.move matches 1 unless score @s maddons.cooldown matches 0.. if score #maddons.automaton.speed maddons.move matches 200.. run data merge entity @s {data:{magical_addons:{tick_cmd:"execute on vehicle on passengers unless score @s maddons.cooldown matches 0.. store result entity @s item.components.\"minecraft:custom_model_data\".floats[1] int 1 run data get storage magical_addons:tick data.entity.automaton.animations.run.frame"}}}
execute if score @s maddons.move matches 1 unless score @s maddons.cooldown matches 0.. if score #maddons.automaton.speed maddons.move matches 200.. on vehicle on vehicle run data merge entity @s {data:{magical_addons:{sound_time:2}}}