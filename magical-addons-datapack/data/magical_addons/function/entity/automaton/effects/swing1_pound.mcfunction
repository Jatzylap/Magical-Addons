# entity:automaton/effects/swing1_pound
# called by: entity:automaton/animate/swing1

execute as @e[type=!#magical_addons:boss,tag=!maddons.automaton,distance=..4] at @s run damage @s 6 mob_attack by @n[tag=maddons.automaton,tag=maddons.entity]

execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ 0 0 -.5 .5 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ 0 0 .5 .5 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ -.5 0 0 .5 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ .5 0 0 .5 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ -.25 0 -.25 .7 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ .25 0 -.25 .7 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ -.25 0 .25 .7 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ .25 0 .25 .7 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ -.125 0 -.5 .475 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ .125 0 -.5 .475 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ -.125 0 .5 .475 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ .125 0 .5 .475 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ -.5 0 -.125 .475 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ -.5 0 .125 .475 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ .5 0 -.125 .475 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ .5 0 .125 .475 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ -.285 0 -.5 .435 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ .285 0 -.5 .435 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ -.285 0 .5 .435 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ .285 0 .5 .435 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ -.5 0 -.285 .435 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ -.5 0 .285 .435 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ .5 0 -.285 .435 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~.2 ~ .5 0 .285 .435 0 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle sculk_charge_pop ~ ~.2 ~ 2 0 2 0 99 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle explosion ~ ~ ~ 0 0 0 0 1 force @a

execute unless block ~ ~-1 ~ #magical_addons:non_collidable run playsound magical_addons:entity.automaton.strike hostile @a ~ ~ ~ 5
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run playsound magical_addons:item.generic.spell.burst hostile @a ~ ~ ~ 5