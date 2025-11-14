# magic:lightning_spell/electricity/hit_entity
# called by: magic:lightning_spell/electricity/shift

particle minecraft:electric_spark ~ ~ ~ .1 .1 .1 0.1 1
particle minecraft:flash{color:[1,1,1,1]} ~ ~ ~ 0 0 0 1 0 force @a
playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 0.25 2
playsound entity.fox.aggro player @a ~ ~ ~ 0.25 2
execute as @e[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.target_entity,distance=..1] at @s run damage @s 4 magic
damage @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=maddons.target_entity] 4 magic