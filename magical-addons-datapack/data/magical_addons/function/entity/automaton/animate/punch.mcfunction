# entity:automaton/animate/punch
# called by: entity:tick

## Reset
execute if score @s maddons.cooldown matches 0 on vehicle on passengers run function magical_addons:entity/automaton/moves/reset

## Punch
execute if score @s maddons.cooldown matches 20..30 store result entity @s item.components."minecraft:custom_model_data".floats[1] int 1 run scoreboard players add @s maddons.animation 1
execute if score @s maddons.cooldown matches 28 on vehicle on vehicle at @s run function magical_addons:entity/automaton/effects/punch_hit
### (Damage moved from punch_hit.mcfunction because it conflicts with player motion)
execute if score @s maddons.cooldown matches 30 on vehicle on vehicle at @s as @e[distance=..5,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton] at @s run damage @s 4.5 mob_attack by @n[tag=maddons.automaton,tag=maddons.vehicle]

scoreboard players remove @s maddons.cooldown 1