# entity:automaton/effects/swing3_hit
# called by: entity:automaton/animate/swing3

execute as @e[distance=..3,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton] at @s run damage @s 9 mob_attack by @n[tag=maddons.automaton,tag=maddons.entity]
execute as @e[distance=..3,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,type=!player] at @s anchored eyes facing entity @n[tag=maddons.automaton,tag=maddons.entity] feet rotated ~ ~50 run function magical_addons:dev/set_motion_vector {power:-2}
execute if entity @a[distance=..3] run scoreboard players set $strength player_motion.api.launch -20000
execute as @a[distance=..3] at @s anchored eyes facing entity @n[tag=maddons.automaton,tag=maddons.entity] feet rotated ~ ~50 run function player_motion:api/launch_looking
