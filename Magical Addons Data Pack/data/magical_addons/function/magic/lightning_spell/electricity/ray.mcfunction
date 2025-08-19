# magic:lightning_spell/electricity/ray
# called by: magic:lightning_spell/electricity/start

scoreboard players add @s maddons.temp 1

## Segment draw
execute as @n[tag=maddons.lightning_spell_extra] at @s run function magical_addons:magic/lightning_spell/electricity/segment

## End segment
execute if block ~ ~ ~ #magical_addons:non_collidable unless score @s maddons.temp matches 25.. positioned ^ ^ ^.1 run function magical_addons:magic/lightning_spell/electricity/ray