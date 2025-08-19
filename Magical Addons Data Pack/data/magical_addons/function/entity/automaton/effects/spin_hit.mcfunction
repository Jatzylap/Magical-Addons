# entity:automaton/effects/spin_hit
# called by: entity:automaton/animate/spin

fill ^-7 ^ ^-7 ^7 ^0.5 ^7 air destroy
execute as @e[distance=..5,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton] at @s run damage @s 9 mob_attack by @n[tag=maddons.automaton,tag=maddons.entity]
execute as @e[distance=..5,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,type=!player] at @s anchored eyes facing entity @n[tag=maddons.automaton,tag=maddons.entity] feet rotated ~ ~50 run function magical_addons:dev/set_motion_vector {power:-2.5}
execute if entity @a[distance=..5] run scoreboard players set $strength player_motion.api.launch -25000
execute as @a[distance=..5] at @s anchored eyes facing entity @n[tag=maddons.automaton,tag=maddons.entity] feet rotated ~ ~50 run function player_motion:api/launch_looking
