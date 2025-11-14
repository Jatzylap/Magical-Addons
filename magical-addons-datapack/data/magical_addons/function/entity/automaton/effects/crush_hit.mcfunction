# entity:automaton/effects/crush_hit
# called by: entity:automaton/animate/crush

execute unless block ~ ~-1 ~ #magical_addons:non_collidable run playsound magical_addons:entity.automaton.slam hostile @a ~ ~ ~ 7
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~-1 ~ 0 0 0 .5 150 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle explosion ~ ~ ~ 0 0 0 0 2 force @a

execute as @e[distance=..3,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton] at @s run damage @s 9999 mob_attack by @n[tag=maddons.automaton,tag=maddons.entity]