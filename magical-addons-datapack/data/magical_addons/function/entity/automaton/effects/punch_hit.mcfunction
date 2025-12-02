# entity:automaton/effects/punch_hit
# called by: entity:automaton/animate/punch

execute if entity @a[distance=..5] run scoreboard players set $strength player_motion.api.launch 15000
execute as @a[distance=..5] at @s anchored eyes rotated ~ -90 run function player_motion:api/launch_looking
fill ^-2 ^2 ^1 ^2 ^6 ^3 air destroy
execute as @e[distance=..5,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,type=!player] at @s anchored eyes facing entity @n[tag=maddons.automaton,tag=maddons.entity.brain] feet rotated ~ ~-90 run function magical_addons:dev/set_motion_vector {power:-1.5}