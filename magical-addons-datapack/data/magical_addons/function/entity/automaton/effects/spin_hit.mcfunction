# entity:automaton/effects/spin_hit
# called by: entity:automaton/animate/spin

fill ^-6 ^1 ^-6 ^6 ^6 ^6 air destroy
execute as @e[distance=..5,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton] at @s run damage @s 9 mob_attack by @n[tag=maddons.automaton,tag=maddons.vehicle]
execute as @e[distance=..5,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,type=!player] at @s anchored eyes facing entity @n[tag=maddons.automaton,tag=maddons.vehicle] feet rotated ~ ~50 run function magical_addons:dev/set_motion_vector {power:-1.2}
execute if entity @a[distance=..5] run scoreboard players set $strength player_motion.api.launch -12000
execute as @a[distance=..5] at @s anchored eyes facing entity @n[tag=maddons.automaton,tag=maddons.vehicle] feet rotated ~ ~50 run function player_motion:api/launch_looking
