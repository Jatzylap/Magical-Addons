# magic:earth_spell/loop
# called by: main:tick_entity

## Block
execute positioned ^ ^ ^1 unless block ~ ~ ~ #magical_addons:non_collidable positioned ^ ^ ^-1 run return run function magical_addons:magic/earth_spell/hit_block

## Entity
execute positioned ~-0.05 ~-0.05 ~-0.05 as @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,dx=0] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run tag @s add maddons.target_entity
execute if entity @n[type=!#magical_addons:invulnerable,tag=maddons.target_entity] store result score @s maddons.damage run function magical_addons:magic/earth_spell/hit_entity
tag @n[tag=maddons.target_entity] remove maddons.target_entity

## Motion
scoreboard players add @s maddons.move 1
tp @s ^ ^ ^1 ~ 0
execute if score @s maddons.move matches 3.. positioned over ocean_floor run summon evoker_fangs ~ ~ ~ {Tags:["maddons.invul"]}

execute if score @s maddons.damage matches 1 run kill
execute if score @s maddons.move matches 19.. run kill