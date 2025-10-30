# entity:automaton/animate/shoot
# called by: entity:automaton/animate

execute if score @s maddons.cooldown matches 0 run return run function magical_addons:entity/automaton/moves/reset

## Stop
execute if score @s[tag=maddons.automaton.shoot] maddons.cooldown matches ..40 run return run function magical_addons:entity/automaton/effects/shoot_down

## Pause animation on last frame
execute if score @s maddons.cooldown matches 41..159 run function magical_addons:entity/automaton/effects/shoot_stasis

## Shoot
execute if score @s[tag=maddons.phase3] maddons.cooldown matches 130 on vehicle at @s positioned ^ ^-2.5 ^ run function magical_addons:entity/automaton/effects/shoot_spell
execute if score @s[tag=maddons.phase3] maddons.cooldown matches 110 on vehicle at @s positioned ^ ^-2.5 ^ run function magical_addons:entity/automaton/effects/shoot_spell
execute if score @s[tag=maddons.phase3] maddons.cooldown matches 90 on vehicle at @s positioned ^ ^-2.5 ^ run function magical_addons:entity/automaton/effects/shoot_spell
execute if score @s[tag=maddons.phase3] maddons.cooldown matches 70 on vehicle at @s positioned ^ ^-2.5 ^ run function magical_addons:entity/automaton/effects/shoot_spell
execute if score @s[tag=maddons.phase3] maddons.cooldown matches 50 on vehicle at @s positioned ^ ^-2.5 ^ run function magical_addons:entity/automaton/effects/shoot_spell
execute if score @s maddons.cooldown matches 120 on vehicle at @s positioned ^ ^-2.5 ^ run function magical_addons:entity/automaton/effects/shoot_spell
execute if score @s maddons.cooldown matches 100 on vehicle at @s positioned ^ ^-2.5 ^ run function magical_addons:entity/automaton/effects/shoot_spell
execute if score @s maddons.cooldown matches 80 on vehicle at @s positioned ^ ^-2.5 ^ run function magical_addons:entity/automaton/effects/shoot_spell
execute if score @s maddons.cooldown matches 60 on vehicle at @s positioned ^ ^-2.5 ^ run function magical_addons:entity/automaton/effects/shoot_spell

execute if score @s maddons.cooldown matches 100 run tag @s add maddons.automaton.shoot