# entity:automaton/animate/spin
# called by: entity:automaton/animate

execute if score @s maddons.cooldown matches 4 run return run function magical_addons:entity/automaton/moves/reset_no_staff

## Spin end
execute if score @s maddons.cooldown matches 80 run return run function magical_addons:entity/automaton/effects/spin_end

## Spin effects
execute if score @s maddons.cooldown matches 221 run function magical_addons:entity/automaton/effects/spin_loop
execute if score @s maddons.cooldown matches 81..221 on vehicle at @s facing entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton] eyes rotated ~ 0 if block ^ ^ ^1 #magical_addons:non_collidable unless block ~ ~-1 ~ #magical_addons:air_like run tp @s ^ ^ ^0.15 ~ 0
execute if score @s maddons.cooldown matches ..221 positioned ^ ^-4.5 ^ run function magical_addons:entity/automaton/effects/spin_hit