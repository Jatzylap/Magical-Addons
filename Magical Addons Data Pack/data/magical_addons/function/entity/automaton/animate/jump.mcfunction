# entity:automaton/animate/jump
# called by: entity:automaton/animate

execute if score @s maddons.cooldown matches 0 run return run function magical_addons:entity/automaton/moves/reset

## Land
execute if score @s[tag=maddons.automaton.jump] maddons.cooldown matches ..100 on vehicle at @s unless block ~ ~-1 ~ #magical_addons:non_collidable on passengers as @s[tag=maddons.entity] run function magical_addons:entity/automaton/effects/jump_particles
execute if score @s[tag=maddons.automaton.jump] maddons.cooldown matches ..100 on vehicle at @s unless block ~ ~-1 ~ #magical_addons:non_collidable on passengers as @s[tag=maddons.entity] run return run function magical_addons:entity/automaton/effects/jump_down

## Jump
execute if score @s maddons.cooldown matches 109 on vehicle at @s facing entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,distance=..64] eyes run rotate @s ~ 0
execute if score @s maddons.cooldown matches 109 on vehicle at @s rotated ~ -35 run function magical_addons:dev/set_motion_vector {power:2.5}
execute if score @s maddons.cooldown matches 109 run tag @s add maddons.automaton.jump

## Pause animation on last frame
execute if score @s maddons.cooldown matches 41..159 run function magical_addons:entity/automaton/effects/jump_air