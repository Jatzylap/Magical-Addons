# entity:automaton/animate/jump
# called by: entity:automaton/moves/jump

## Reset
execute if score @s maddons.cooldown matches 0 on vehicle on passengers run function magical_addons:entity/automaton/moves/reset

## Land
execute if score @s[tag=maddons.entity.brain] maddons.cooldown matches ..90 if score @s maddons.animation matches 1.. on vehicle on vehicle if data entity @s {OnGround:1b} on passengers on passengers store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1 run scoreboard players remove @s maddons.animation 1
execute if score @s[tag=maddons.jump_land] maddons.cooldown matches ..90 on vehicle on vehicle if data entity @s {OnGround:1b} on passengers on passengers as @s[tag=maddons.entity.brain] run return run function magical_addons:entity/automaton/effects/jump_land

## Jump
execute if score @s maddons.cooldown matches 118..199 if score @s maddons.animation matches ..79 store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1 run scoreboard players add @s maddons.animation 1
execute if score @s maddons.cooldown matches 99 on vehicle on vehicle at @s facing entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,distance=..64] eyes run rotate @s ~ 0
execute if score @s maddons.cooldown matches 99 on vehicle on vehicle at @s rotated ~ -35 run function magical_addons:dev/set_motion_vector {power:2.5}

scoreboard players remove @s maddons.cooldown 1