# magic:lightning_spell/electricity/shift
# called by: magic:lightning_spell/electricity/segment, magic:lightning_spell/electricity/shift

particle electric_spark ~ ~ ~ 0 0 0 0 1 force

tp ^ ^ ^

## Hit entity
execute positioned ~-0.05 ~-0.05 ~-0.05 as @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,dx=0] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run tag @s add maddons.target_entity
execute if entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=maddons.target_entity] run function magical_addons:magic/lightning_spell/electricity/hit_entity
tag @n[type=!#magical_addons:invulnerable,tag=!maddons.invul] remove maddons.target_entity

## Hit block
execute unless block ^ ^ ^ #magical_addons:non_collidable run function magical_addons:magic/lightning_spell/electricity/hit_block

## X
execute if score @s maddons.zigzag_amplitude_x matches ..-1 run scoreboard players add @s maddons.zigzag_amplitude_x 1
execute if score @s maddons.zigzag_amplitude_x matches 1.. run scoreboard players remove @s maddons.zigzag_amplitude_x 1
execute if score @s maddons.zigzag_amplitude_x matches ..-1 positioned ^.1 ^ ^.1 run function magical_addons:magic/lightning_spell/electricity/shift
execute if score @s maddons.zigzag_amplitude_x matches 1.. positioned ^-.1 ^ ^.1 run function magical_addons:magic/lightning_spell/electricity/shift

## Y
execute if score @s maddons.zigzag_amplitude_y matches ..-1 run scoreboard players add @s maddons.zigzag_amplitude_y 1
execute if score @s maddons.zigzag_amplitude_y matches 1.. run scoreboard players remove @s maddons.zigzag_amplitude_y 1
execute if score @s maddons.zigzag_amplitude_y matches ..-1 positioned ^ ^.1 ^.1 run function magical_addons:magic/lightning_spell/electricity/shift
execute if score @s maddons.zigzag_amplitude_y matches 1.. positioned ^ ^-.1 ^.1 run function magical_addons:magic/lightning_spell/electricity/shift