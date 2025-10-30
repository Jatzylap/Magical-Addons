# entity:automaton/animate/punch1
# called by: entity:automaton/animate

execute if score @s maddons.cooldown matches 43 positioned ^2 ^-8 ^1.5 rotated ~ 0 run function magical_addons:entity/automaton/effects/punch1_hit 
execute if score @s maddons.cooldown matches 0 run function magical_addons:entity/automaton/moves/reset_no_staff