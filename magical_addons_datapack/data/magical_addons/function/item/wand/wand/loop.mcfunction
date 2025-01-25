# item:wand/wand/loop
# called by: item:tick, main:tick_entity

particle white_ash ~ ~ ~ 0.2 0.2 0.2 0.1 70 force @a

## Block
execute positioned ^ ^ ^1 unless block ~ ~ ~ #magical_addons:air_like positioned ^ ^ ^-1 run function magical_addons:item/wand/wand/hit_block

## Entity
tag @n[type=!#magical_addons:invulnerable,distance=..2] add maddons.spell.hit
execute positioned ^ ^ ^1 store success score @s maddons.temp run data modify entity @s data.temp.UUID set from entity @n[tag=maddons.spell.hit,distance=..2] UUID
execute positioned ^ ^ ^1 if score @s maddons.temp matches 1 run function magical_addons:item/wand/wand/hit_entity
tag @e[tag=maddons.spell.hit,distance=..2] remove maddons.spell.hit

## Motion
scoreboard players add @s maddons.move 1
tp @s ^ ^ ^1

execute if score @s maddons.move matches 50.. run kill