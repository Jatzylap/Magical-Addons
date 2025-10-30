# entity:automaton/animate/crush
# called by: entity:automaton/animate

execute if score @s maddons.cooldown matches 40 on vehicle at @s positioned ^-2 ^ ^5 rotated ~ 0 run function magical_addons:entity/automaton/effects/crush_hit
execute if score @s maddons.cooldown matches 40 on vehicle at @s positioned ^2 ^ ^5 rotated ~ 0 run function magical_addons:entity/automaton/effects/crush_hit
execute if score @s maddons.cooldown matches 0 run function magical_addons:entity/automaton/moves/reset_no_staff