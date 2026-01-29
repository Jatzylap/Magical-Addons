# entity:automaton/effects/pound_hit
# called by: entity:automaton/animate/pound

execute unless block ~ ~-1 ~ #magical_addons:non_collidable at @s as @a run playsound magical_addons:entity.automaton.slam hostile @a ~ ~ ~ 7
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle explosion ~ ~ ~ 0 0 0 0 2 force @a

execute as @e[distance=..5,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton] at @s run damage @s 9999 mob_attack by @n[tag=maddons.automaton,tag=maddons.vehicle]