# entity:automaton/check_local
# called by: main:half_second

## Light
execute if block ~ ~ ~ #magical_addons:translucent on vehicle on passengers run data remove entity @s brightness
execute unless block ~ ~ ~ #magical_addons:translucent on vehicle on passengers run function magical_addons:entity/light

## Health
execute store result score @s maddons.damage on vehicle run data get entity @s Health

## Flags
execute on vehicle on vehicle if data entity @s {NoAI:1b} on passengers on passengers run tag @s[tag=maddons.entity.brain] remove maddons.entity.ai
execute on vehicle on vehicle unless data entity @s {NoAI:1b} on passengers on passengers run tag @s[tag=maddons.entity.brain] add maddons.entity.ai

## Phase
execute if score @s maddons.damage matches 601.. run tag @s add maddons.phase1
execute if score @s maddons.damage matches 601.. run tag @s remove maddons.phase2
execute if score @s maddons.damage matches 601.. run tag @s remove maddons.phase3
execute if score @s maddons.damage matches 301..600 run tag @s add maddons.phase2
execute if score @s maddons.damage matches 301..600 run tag @s remove maddons.phase1
execute if score @s maddons.damage matches 301..600 run tag @s remove maddons.phase3
execute if score @s maddons.damage matches ..300 run tag @s add maddons.phase3
execute if score @s maddons.damage matches ..300 run tag @s remove maddons.phase1
execute if score @s maddons.damage matches ..300 run tag @s remove maddons.phase2

## Ambient sound
execute if entity @s[tag=!maddons.entity.silent] if predicate magical_addons:shared/5_percent run playsound magical_addons:entity.automaton.ambient hostile @a ~ ~ ~ 3

## Attack
#execute if entity @s[tag=maddons.entity.ai] if entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,distance=..64] if predicate magical_addons:shared/50_percent unless score @s maddons.cooldown matches 0.. run function magical_addons:entity/automaton/attack

## Boss fog in aether
execute if dimension minecraft:the_aether as @a[distance=..64] at @s store result score @s maddons.boss_fog.time run data get entity @s active_effects[{id:"minecraft:darkness"}].duration
execute if dimension minecraft:the_aether as @a[distance=..64] at @s store success score @s maddons.boss_fog.success if data entity @s active_effects[{id:"minecraft:darkness"}].amplifier
execute if dimension minecraft:the_aether as @a[distance=..64] at @s if score @s maddons.boss_fog.time matches ..20 if score @s maddons.boss_fog.success matches 0 run effect clear @s darkness

## Music
execute if entity @s[tag=!maddons.entity.ai] run return fail
tag @a[distance=..64] add maddons.boss.automaton