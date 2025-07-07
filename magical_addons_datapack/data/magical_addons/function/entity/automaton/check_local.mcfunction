# entity:automaton/check_local
# called by: main:one_second

## Health
execute store result score @s maddons.damage on vehicle run data get entity @s Health

## Phase
execute if score @s maddons.damage matches 601.. run tag @s add maddons.phase1
execute if score @s maddons.damage matches 301..600 run tag @s add maddons.phase2
execute if score @s maddons.damage matches ..300 run tag @s add maddons.phase3

## Attack
#execute unless score @s maddons.cooldown matches 0.. if predicate magical_addons:shared/50_percent run function magical_addons:entity/automaton/attack

## Scale
function magical_addons:entity/automaton/scale