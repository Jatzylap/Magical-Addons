# entity:automaton/animate/swing1
# called by: entity:automaton/animate

execute if score @s maddons.cooldown matches 0 positioned ^2 ^-8.4 ^1 rotated ~ 0 run function magical_addons:entity/automaton/effects/swing1_pound
execute if score @s maddons.cooldown matches 0 run function magical_addons:entity/automaton/moves/reset