# entity:automaton/attack
# called by: entity:automaton/loop

## Start animation
scoreboard players reset @s maddons.temp

## Attacks (phase 1)
execute if entity @s[tag=maddons.phase1] store result score @s[tag=maddons.phase1] maddons.temp run random value 0..2
execute if score @s maddons.temp matches 0 if entity @n[tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=8..64] run return run function magical_addons:entity/automaton/moves/jump
execute if score @s maddons.temp matches 1 if entity @n[tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..8] run return run function magical_addons:entity/automaton/moves/swing1
execute if score @s maddons.temp matches 2 if entity @n[tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..8] run return run function magical_addons:entity/automaton/moves/swing2

## Attacks (phase 2)
#execute if entity @s[tag=maddons.phase2] store result score @s[tag=maddons.phase2] maddons.temp run random value 0..3
#execute if score @s maddons.temp matches 0 run return run function magical_addons:entity/automaton/moves/shoot
#execute if score @s maddons.temp matches 1 if entity @n[tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=8..64] run return run function magical_addons:entity/automaton/moves/jump
#execute if score @s maddons.temp matches 2 if entity @n[tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..8] run return run function magical_addons:entity/automaton/moves/swing1
#execute if score @s maddons.temp matches 3 if entity @n[tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..8] run return run function magical_addons:entity/automaton/moves/swing2
#execute if score @s maddons.temp matches 4 if entity @n[tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..8] run return run function magical_addons:entity/automaton/moves/swing3

## Attacks (phase 3)
#execute if entity @s[tag=maddons.phase3] store result score @s[tag=maddons.phase3] maddons.temp run random value 0..7
#execute if score @s maddons.temp matches 0 run return run function magical_addons:entity/automaton/moves/shoot
#execute if score @s maddons.temp matches 1 if entity @n[tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=8..64] run return run function magical_addons:entity/automaton/moves/jump
#execute if score @s maddons.temp matches 2 if entity @n[tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..5] run return run function magical_addons:entity/automaton/moves/punch1
#execute if score @s maddons.temp matches 3 if entity @n[tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..5] run return run function magical_addons:entity/automaton/moves/punch2
#execute if score @s maddons.temp matches 4 if entity @n[tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..5] run return run function magical_addons:entity/automaton/moves/punch3
#execute if score @s maddons.temp matches 5 if entity @n[tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..5] run return run function magical_addons:entity/automaton/moves/kick1
#execute if score @s maddons.temp matches 6 if entity @n[tag=!maddons.invul,type=!#magical_addons:invulnerable,distance=..5] run return run function magical_addons:entity/automaton/moves/kick2
#execute if score @s maddons.temp matches 7 run return run function magical_addons:entity/automaton/moves/spin