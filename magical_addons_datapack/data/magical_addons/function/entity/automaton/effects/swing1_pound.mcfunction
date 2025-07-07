# entity:automaton/effects/swing1_pound
# called by: entity:automaton/animate/swing1

execute as @e[type=!#magical_addons:boss,tag=!maddons.automaton,distance=..4] at @s run damage @s 6 mob_attack by @n[tag=maddons.automaton,tag=maddons.entity]

particle end_rod ~ ~.2 ~ 0 0 -.5 .5 0 force @a
particle end_rod ~ ~.2 ~ 0 0 .5 .5 0 force @a
particle end_rod ~ ~.2 ~ -.5 0 0 .5 0 force @a
particle end_rod ~ ~.2 ~ .5 0 0 .5 0 force @a
particle end_rod ~ ~.2 ~ -.25 0 -.25 .7 0 force @a
particle end_rod ~ ~.2 ~ .25 0 -.25 .7 0 force @a
particle end_rod ~ ~.2 ~ -.25 0 .25 .7 0 force @a
particle end_rod ~ ~.2 ~ .25 0 .25 .7 0 force @a
particle end_rod ~ ~.2 ~ -.125 0 -.5 .475 0 force @a
particle end_rod ~ ~.2 ~ .125 0 -.5 .475 0 force @a
particle end_rod ~ ~.2 ~ -.125 0 .5 .475 0 force @a
particle end_rod ~ ~.2 ~ .125 0 .5 .475 0 force @a
particle end_rod ~ ~.2 ~ -.5 0 -.125 .475 0 force @a
particle end_rod ~ ~.2 ~ -.5 0 .125 .475 0 force @a
particle end_rod ~ ~.2 ~ .5 0 -.125 .475 0 force @a
particle end_rod ~ ~.2 ~ .5 0 .125 .475 0 force @a
particle end_rod ~ ~.2 ~ -.285 0 -.5 .435 0 force @a
particle end_rod ~ ~.2 ~ .285 0 -.5 .435 0 force @a
particle end_rod ~ ~.2 ~ -.285 0 .5 .435 0 force @a
particle end_rod ~ ~.2 ~ .285 0 .5 .435 0 force @a
particle end_rod ~ ~.2 ~ -.5 0 -.285 .435 0 force @a
particle end_rod ~ ~.2 ~ -.5 0 .285 .435 0 force @a
particle end_rod ~ ~.2 ~ .5 0 -.285 .435 0 force @a
particle end_rod ~ ~.2 ~ .5 0 .285 .435 0 force @a
particle sculk_soul ~ ~ ~ 2 0 2 0 99 force @a
particle explosion ~ ~ ~ 0 0 0 0 1 force @a

playsound item.trident.return hostile @a ~ ~ ~ 5 2
playsound item.trident.hit_ground hostile @a ~ ~ ~ 5 0
playsound magical_addons:item.generic.spell.burst hostile @a ~ ~ ~ 5