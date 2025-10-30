# entity:automaton/effects/punch2_hit
# called by: entity:automaton/animate/punch2

playsound magical_addons:entity.automaton.short_punch hostile @a ~ ~ ~ 3
execute as @e[distance=..1.5,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton] at @s run damage @s 4.5 mob_attack by @n[tag=maddons.automaton,tag=maddons.entity]
execute as @e[distance=..1.5,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,type=!player] at @s anchored eyes facing entity @n[tag=maddons.automaton,tag=maddons.entity] feet rotated ~ ~50 run function magical_addons:dev/set_motion_vector {power:-1.5}
execute if entity @a[distance=..1.5] run scoreboard players set $strength player_motion.api.launch -15000
execute as @a[distance=..1.5] at @s anchored eyes facing entity @n[tag=maddons.automaton,tag=maddons.entity] feet rotated ~ ~50 run function player_motion:api/launch_looking
