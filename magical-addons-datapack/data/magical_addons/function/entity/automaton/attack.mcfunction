# entity:automaton/attack
# called by: entity:automaton/check_local

## Start animation
scoreboard players reset @s maddons.temp

## Attacks
execute store result score @s maddons.temp run random value 0..4
execute if score @s maddons.temp matches 0 on vehicle at @s on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/shoot
execute if score @s maddons.temp matches 1 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=8..64] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/jump
execute if score @s maddons.temp matches 2 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..5] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/punch
execute if score @s maddons.temp matches 3 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..8] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/pound
execute if score @s maddons.temp matches 4 on vehicle at @s run return run function magical_addons:entity/automaton/moves/spin