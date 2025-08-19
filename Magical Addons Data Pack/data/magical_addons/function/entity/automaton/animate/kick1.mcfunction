# entity:automaton/animate/kick1
# called by: entity:automaton/animate

execute if score @s maddons.cooldown matches 25 positioned ^1 ^-8 ^2 rotated ~ 0 run function magical_addons:entity/automaton/effects/kick1_hit 
execute if score @s maddons.cooldown matches 0 run function magical_addons:entity/automaton/moves/reset_no_staff