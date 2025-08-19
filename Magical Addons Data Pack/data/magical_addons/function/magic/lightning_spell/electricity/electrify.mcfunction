# magic:lightning_spell/electricity/electrify
# called by: magic:lightning_spell/electricity/hit_block, magic:lightning_spell/electricity/hit_entity

execute as @e[type=!#magical_addons:invulnerable,tag=!maddons.invul,distance=.001..25] at @s if block ~ ~ ~ water run particle electric_spark ~ ~ ~ 0.5 1 0.5 0.1 59 force @a

execute as @e[type=!#magical_addons:invulnerable,tag=!maddons.invul,type=!player,distance=..25] at @s if block ~ ~ ~ water run particle flash ~ ~ ~ 0.5 0.5 0.5 0.1 4 force @a
execute as @a[distance=..25] at @s if block ~ ~ ~ water run particle flash ~ ~ ~ 0 0 0 0.1 1 force @a

execute as @e[type=!#magical_addons:invulnerable,tag=!maddons.invul,distance=.001..25] at @s if block ~ ~ ~ water run particle bubble_pop ~ ~ ~ 1 0.5 1 0.1 99 force @a

execute as @e[type=!#magical_addons:invulnerable,tag=!maddons.invul,distance=.001..25] at @s if block ~ ~ ~ water run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 2 2
execute as @e[type=!#magical_addons:invulnerable,tag=!maddons.invul,distance=.001..25] at @s if block ~ ~ ~ water run playsound entity.fox.aggro player @a ~ ~ ~ 2 2

execute as @e[type=!#magical_addons:invulnerable,tag=!maddons.invul,distance=.001..25] at @s if block ~ ~ ~ water run damage @s 4 magic