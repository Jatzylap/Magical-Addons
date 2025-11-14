# magic:wind_spell/loop
# called by: main:tick_entity

## Block
execute positioned ^ ^ ^1 unless block ~ ~ ~ #magical_addons:non_collidable positioned ^ ^ ^-1 run return run function magical_addons:magic/wind_spell/hit_block

## Entity
execute positioned ~-0.05 ~-0.05 ~-0.05 as @n[type=!#magical_addons:invulnerable,dx=0] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run tag @s add maddons.target_entity
execute if entity @n[type=!#magical_addons:invulnerable,tag=maddons.target_entity] store result score @s maddons.damage run function magical_addons:magic/wind_spell/hit_entity
tag @n[tag=maddons.target_entity] remove maddons.target_entity

## Motion
scoreboard players add @s maddons.move 1
tag @s[scores={maddons.damage=3}] add maddons.deflect
tp @s[tag=!maddons.deflect] ^ ^ ^1
tp @s[tag=maddons.deflect] ^ ^ ^-0.8

execute if score @s maddons.damage matches 1 run kill
execute if score @s maddons.move matches 99.. run kill