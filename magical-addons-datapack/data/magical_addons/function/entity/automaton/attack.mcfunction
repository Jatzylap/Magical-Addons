# entity:automaton/attack
# called by: entity:automaton/check_local

## Start animation
scoreboard players reset @s maddons.temp

## Main attacks
execute on vehicle on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..5] on passengers on passengers as @s[tag=maddons.entity.brain] at @s run return run function magical_addons:entity/automaton/moves/punch
execute if predicate magical_addons:shared/25_percent on vehicle on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=32..64] on passengers on passengers as @s[tag=maddons.entity.brain] at @s run return run function magical_addons:entity/automaton/moves/jump
execute at @s positioned ~-6 ~1 ~-6 if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,dx=12,dy=12,dz=12] run return run function magical_addons:entity/automaton/moves/jump

## Phase 2
execute if entity @s[tag=maddons.phase2] store result score @s maddons.temp run random value 0..2
execute if entity @s[tag=maddons.phase2] if score @s maddons.temp matches 0 run return run function magical_addons:entity/automaton/moves/shoot
execute if entity @s[tag=maddons.phase2] if score @s maddons.temp matches 1 on vehicle on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..8] on passengers on passengers as @s[tag=maddons.entity.brain] at @s run return run function magical_addons:entity/automaton/moves/pound

## Phase 3
execute if entity @s[tag=maddons.phase3] store result score @s maddons.temp run random value 0..3
execute if entity @s[tag=maddons.phase3] if score @s maddons.temp matches 0 run return run function magical_addons:entity/automaton/moves/shoot
execute if entity @s[tag=maddons.phase3] if score @s maddons.temp matches 1 on vehicle on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..8] on passengers on passengers as @s[tag=maddons.entity.brain] at @s run return run function magical_addons:entity/automaton/moves/pound
execute if entity @s[tag=maddons.phase3] if score @s maddons.temp matches 2 run return run function magical_addons:entity/automaton/moves/spin