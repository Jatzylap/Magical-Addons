# entity:automaton/check_local
# called by: main:half_second

## Light
execute if block ~ ~ ~ #magical_addons:translucent on vehicle on passengers run data remove entity @s brightness
execute unless block ~ ~ ~ #magical_addons:translucent on vehicle on passengers run function magical_addons:entity/light

## Health
execute store result score @s maddons.damage on vehicle on vehicle run data get entity @s Health

## Flags
execute on vehicle on vehicle if data entity @s {NoAI:1b} on passengers on passengers run tag @s[tag=maddons.entity.brain] remove maddons.entity.ai
execute on vehicle on vehicle unless data entity @s {NoAI:1b} on passengers on passengers run tag @s[tag=maddons.entity.brain] add maddons.entity.ai

## Phase
execute if score @s maddons.damage matches 201.. run tag @s add maddons.phase1
execute if score @s maddons.damage matches 201.. run tag @s remove maddons.phase2
execute if score @s maddons.damage matches 201.. run tag @s remove maddons.phase3
execute if score @s maddons.damage matches 101..200 run tag @s add maddons.phase2
execute if score @s maddons.damage matches 101..200 run tag @s remove maddons.phase1
execute if score @s maddons.damage matches 101..200 run tag @s remove maddons.phase3
execute if score @s maddons.damage matches ..100 run tag @s add maddons.phase3
execute if score @s maddons.damage matches ..100 run tag @s remove maddons.phase1
execute if score @s maddons.damage matches ..100 run tag @s remove maddons.phase2

## Speed
execute on vehicle on vehicle run attribute @s minecraft:movement_speed modifier remove magical_addons:speed
execute if entity @s[tag=!maddons.phase1] on vehicle on vehicle run attribute @s minecraft:movement_speed modifier add magical_addons:speed 0.1 add_value

## Ambient sound
execute if predicate magical_addons:shared/5_percent if entity @s[tag=!maddons.entity.silent] at @s as @a run playsound magical_addons:entity.automaton.ambient hostile @a

## Attack
execute if entity @s[tag=maddons.entity.ai,tag=!maddons.entity.attack] if entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,distance=..64] if predicate magical_addons:shared/50_percent run function magical_addons:entity/automaton/attack

## Boss fog in aether
execute if dimension minecraft:the_aether run weather thunder 20

## Music
execute if entity @s[tag=!maddons.entity.ai] run return fail
tag @a[distance=..64] add maddons.boss.automaton