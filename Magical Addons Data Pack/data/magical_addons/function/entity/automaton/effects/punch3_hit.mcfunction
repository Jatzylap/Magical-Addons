# entity:automaton/effects/punch3_hit
# called by: entity:automaton/animate/punch3

playsound magical_addons:entity.automaton.short_punch hostile @a ~ ~ ~ 3
execute as @e[distance=..3,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton] at @s run damage @s 9 mob_attack by @n[tag=maddons.automaton,tag=maddons.entity]
execute as @e[distance=..3,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,type=!player] at @s anchored eyes facing entity @n[tag=maddons.automaton,tag=maddons.entity] feet rotated ~ ~50 run function magical_addons:dev/set_motion_vector {power:-3}
execute if entity @a[distance=..3] run scoreboard players set $strength player_motion.api.launch -30000
execute as @a[distance=..3] at @s anchored eyes facing entity @n[tag=maddons.automaton,tag=maddons.entity] feet rotated ~ ~50 run function player_motion:api/launch_looking
