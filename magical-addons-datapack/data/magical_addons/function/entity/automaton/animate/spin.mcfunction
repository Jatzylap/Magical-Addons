# entity:automaton/animate/spin
# called by: entity:automaton/animate

## Reset
execute if score @s maddons.cooldown matches 0 on vehicle on passengers run function magical_addons:entity/automaton/moves/reset

## Start
execute if score @s[tag=!maddons.bone.legs] maddons.cooldown matches 221.. store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1 run scoreboard players add @s maddons.animation 1

## End
execute if score @s[tag=!maddons.bone.legs] maddons.cooldown matches ..20 store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1 run scoreboard players remove @s maddons.animation 1

## Spin
execute if score @s maddons.cooldown matches 221 run data modify entity @s[tag=maddons.bone.legs] item.components."minecraft:custom_model_data".floats[0] set value 2f
execute if score @s maddons.cooldown matches 20..221 store result entity @s[tag=maddons.bone.legs] item.components."minecraft:custom_model_data".floats[1] float 1 run data get storage magical_addons:tick data.entity.automaton.animations.run.frame
execute if score @s maddons.cooldown matches 20..221 on vehicle on vehicle at @s if data storage magical_addons:tick {data:{entity:{automaton:{animations:{run:{frame:0}}}}}} at @s as @a run playsound magical_addons:entity.automaton.short_punch hostile @a ~ ~ ~ 1 1.1
execute if score @s maddons.cooldown matches 20..221 on vehicle on vehicle at @s if data storage magical_addons:tick {data:{entity:{automaton:{animations:{run:{frame:8}}}}}} at @s as @a run playsound magical_addons:entity.automaton.short_punch hostile @a ~ ~ ~ 1 1.1
execute if score @s[tag=maddons.entity.brain] maddons.cooldown matches 20..221 on vehicle on vehicle at @s positioned over world_surface unless block ~ ~-1 ~ #magical_addons:non_collidable facing entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton] eyes rotated ~ 0 run tp @s ^ ^ ^0.14 ~ 0
execute if score @s maddons.cooldown matches 20..221 facing entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton] eyes rotated ~ 0 run rotate @s ~ 0
execute if score @s[tag=!maddons.bone.head,tag=!maddons.bone.legs] maddons.cooldown matches 20..221 run rotate @s ~32 ~
execute if score @s[tag=maddons.bone.head] maddons.cooldown matches 20..221 run rotate @s ~-32 ~

## Hit
execute if score @s maddons.cooldown matches ..221 if data storage magical_addons:tick {data:{entity:{automaton:{animations:{run:{frame:0}}}}}} on vehicle on vehicle at @s run function magical_addons:entity/automaton/effects/spin_hit
execute if score @s maddons.cooldown matches ..221 if data storage magical_addons:tick {data:{entity:{automaton:{animations:{run:{frame:8}}}}}} on vehicle on vehicle at @s run function magical_addons:entity/automaton/effects/spin_hit

scoreboard players remove @s maddons.cooldown 1