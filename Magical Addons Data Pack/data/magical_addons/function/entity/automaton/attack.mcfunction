# entity:automaton/attack
# called by: entity:automaton/check_local

## Start animation
scoreboard players reset @s maddons.temp

## Attacks (phase 1)
execute if entity @s[tag=maddons.phase1] store result score @s[tag=maddons.phase1] maddons.temp run random value 0..3
execute if score @s maddons.temp matches 0 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..4.5] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/swing1
execute if score @s maddons.temp matches 1 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..9] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/swing2
execute if score @s maddons.temp matches 2 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..9] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/swing3
execute if score @s maddons.temp matches 3 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..32] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/jump

## Attacks (phase 2)
execute if entity @s[tag=maddons.phase2] store result score @s[tag=maddons.phase2] maddons.temp run random value 0..4
execute if score @s maddons.temp matches 0 on vehicle at @s on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/shoot
execute if score @s maddons.temp matches 1 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..32] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/jump
execute if score @s maddons.temp matches 2 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..9] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/swing1
execute if score @s maddons.temp matches 3 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..9] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/swing2
execute if score @s maddons.temp matches 4 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..9] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/swing3

## Attacks (phase 3)
execute if entity @s[tag=maddons.phase3] store result score @s[tag=maddons.phase3] maddons.temp run random value 0..4
execute if score @s maddons.temp matches 0 on vehicle at @s on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/shoot
execute if score @s maddons.temp matches 1 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=8..64] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/jump
#execute if score @s maddons.temp matches 2 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..5] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/punch1
#execute if score @s maddons.temp matches 3 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..5] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/punch2
execute if score @s maddons.temp matches 2 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..5] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/punch3
#execute if score @s maddons.temp matches 3 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..5] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/kick1
#execute if score @s maddons.temp matches 4 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..5] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/kick2
execute if score @s maddons.temp matches 3 on vehicle at @s if entity @n[tag=!maddons.automaton,tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..8] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/automaton/moves/crush
execute if score @s maddons.temp matches 4 on vehicle at @s run return run function magical_addons:entity/automaton/moves/spin