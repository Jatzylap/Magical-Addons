# magic:wind_spell/hit_block
# called by: magic:wind_spell/loop

particle gust_emitter_large ~ ~ ~ 0 0 0 0 1 force

## Close radius
scoreboard players set $strength player_motion.api.launch -20000
execute as @e[type=!#magical_addons:invulnerable,type=!player,tag=!maddons.invul,distance=..3] at @s anchored eyes facing entity @n[tag=maddons.wind_spell] feet run function magical_addons:dev/set_motion_vector {power:-2}
execute as @a[distance=..3] at @s anchored eyes facing entity @n[tag=maddons.wind_spell] feet run function player_motion:api/launch_looking

## Far radius
scoreboard players set $strength player_motion.api.launch -10000
execute as @e[type=!#magical_addons:invulnerable,type=!player,tag=!maddons.invul,distance=3.001..5] at @s anchored eyes facing entity @n[tag=maddons.wind_spell] feet run function magical_addons:dev/set_motion_vector {power:-1}
execute as @a[distance=3.001..5] at @s anchored eyes facing entity @n[tag=maddons.wind_spell] feet run function player_motion:api/launch_looking

playsound magical_addons:item.generic.spell.dispel player @a ~ ~ ~ 1

kill @s