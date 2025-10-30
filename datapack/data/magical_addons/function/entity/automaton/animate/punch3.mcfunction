# entity:automaton/animate/punch3
# called by: entity:automaton/animate

execute if score @s maddons.cooldown matches 43 positioned ^ ^-8 ^1.5 rotated ~ 0 run function magical_addons:entity/automaton/effects/punch3_hit
execute if score @s maddons.cooldown matches 0 run function magical_addons:entity/automaton/moves/reset_no_staff