# entity:automaton/animate/drop_staff
# called by: entity:automaton/animate

execute if score @s maddons.cooldown matches 90 positioned ^3 ^-5 ^ rotated ~ 0 run particle end_rod ~ ~ ~ 0 3 0 0.1 15
execute if score @s maddons.cooldown matches 4 run function magical_addons:entity/automaton/moves/reset_no_staff