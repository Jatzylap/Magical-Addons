# entity:automaton/check_local
# called by: main:half_second

## Health
execute store result score @s maddons.damage on vehicle run data get entity @s Health

## Phase
execute if score @s maddons.damage matches 601.. run tag @s add maddons.phase1
execute if score @s maddons.damage matches 601.. run tag @s remove maddons.phase2
execute if score @s maddons.damage matches 601.. run tag @s remove maddons.phase3
execute if score @s maddons.damage matches 301..600 run tag @s add maddons.phase2
execute if score @s maddons.damage matches 301..600 run tag @s remove maddons.phase1
execute if score @s maddons.damage matches 301..600 run tag @s remove maddons.phase3
execute if score @s[tag=!maddons.phase3] maddons.damage matches ..300 run function magical_addons:entity/automaton/moves/drop_staff
execute if score @s maddons.damage matches ..300 run tag @s add maddons.phase3
execute if score @s maddons.damage matches ..300 run tag @s remove maddons.phase1
execute if score @s maddons.damage matches ..300 run tag @s remove maddons.phase2

## Ambient sound
execute on vehicle if entity @s[tag=!maddons.silent] if predicate magical_addons:shared/5_percent run playsound magical_addons:entity.automaton.ambient hostile @a ~ ~ ~ 3

## Attack
execute if entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,distance=..64] if predicate magical_addons:shared/50_percent unless score @s maddons.cooldown matches 0.. on vehicle unless data entity @s {NoAI:1b} on passengers as @s[tag=maddons.entity] run function magical_addons:entity/automaton/attack

## Scale
function magical_addons:entity/automaton/scale