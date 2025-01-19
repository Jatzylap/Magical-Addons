# item:wand/wand/loop
# called by: item:tick, main:tick_entity

particle white_ash ~ ~ ~ 0.2 0.2 0.2 0.1 70 force @a

execute positioned ^ ^ ^1 unless block ~ ~ ~ #magical_addons:air_like positioned ^ ^ ^-1 run function magical_addons:item/wand/wand/hit_block

execute positioned ^ ^ ^1 store success score @s maddons.temp run data modify entity @s data.temp.UUID set from entity @n[type=!#magical_addons:invulnerable,distance=..1] UUID
execute positioned ^ ^ ^1 if score @s maddons.temp matches 1 run function magical_addons:item/wand/wand/hit_entity

scoreboard players add @s maddons.move 1
tp @s ^ ^ ^1

execute if score @s maddons.move matches 50.. run kill