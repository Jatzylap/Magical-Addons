# magic:lightning_spell/electricity/start
# called by: magic:lightning_spell/loop

execute if score @s maddons.move matches 99.. run return run kill

tag @s add maddons.ray

playsound entity.fox.aggro player @a ~ ~ ~ 1 2

execute anchored eyes run summon marker ^ ^ ^ {Tags:[maddons.lightning_spell_extra,maddons.invul]}

execute as @n[tag=maddons.lightning_spell_extra] at @s rotated as @n[tag=maddons.ray] run tp @s ^ ^ ^1 ~ ~

execute anchored eyes positioned ^ ^ ^1 run function magical_addons:magic/lightning_spell/electricity/ray

scoreboard players reset @s maddons.temp

kill @e[tag=maddons.lightning_spell_extra]

tag @s remove maddons.ray