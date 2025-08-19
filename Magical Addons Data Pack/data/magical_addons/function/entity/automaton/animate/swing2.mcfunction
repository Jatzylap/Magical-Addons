# entity:automaton/animate/swing2
# called by: entity:automaton/animate

execute if score @s maddons.cooldown matches 40 on vehicle at @s positioned ^2 ^ ^5 rotated ~ 0 on passengers as @s[tag=maddons.entity] run function magical_addons:entity/automaton/effects/swing2_pound

execute if score @s maddons.cooldown matches 0 run function magical_addons:entity/automaton/moves/reset