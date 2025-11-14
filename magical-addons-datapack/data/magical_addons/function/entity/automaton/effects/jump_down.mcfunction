# entity:automaton/effects/jump_down
# called by: entity:automaton/animate/jump

tag @s remove maddons.automaton.jump

execute on vehicle at @s as @e[distance=..6,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton] at @s run damage @s 8 mob_attack by @n[tag=maddons.automaton,tag=maddons.entity]
execute on vehicle at @s as @e[distance=..6,type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,type=!player] at @s anchored eyes facing entity @n[tag=maddons.automaton,tag=maddons.vehicle] feet run function magical_addons:dev/set_motion_vector {power:-1.5}

scoreboard players set $strength player_motion.api.launch -10000
execute on vehicle as @a[distance=..6] at @s anchored eyes facing entity @n[tag=maddons.automaton,tag=maddons.vehicle] feet run function player_motion:api/launch_looking

execute on vehicle at @s unless block ~ ~-1 ~ #magical_addons:non_collidable run playsound magical_addons:entity.automaton.slam hostile @a ~ ~ ~ 7

## Set animation time
execute store result score @s maddons.cooldown run scoreboard players set #maddons.temp maddons.temp 40

## Set animation
execute on passengers run data modify entity @s[tag=maddons.head] item.components."minecraft:custom_model_data".floats[1] set value 3f
data modify entity @s item.components."minecraft:custom_model_data".floats[1] set value 3f

## Set start frame for animation
execute store result score @s maddons.animation run time query gametime
scoreboard players operation @s maddons.animation %= #24000 maddons.constant
scoreboard players remove @s maddons.animation 39
scoreboard players add #maddons.temp maddons.temp 1
scoreboard players operation @s maddons.animation %= #maddons.temp maddons.temp
scoreboard players operation @s maddons.animation *= #1000 maddons.constant
execute store result entity @s item.components."minecraft:custom_data".magical_addons.colors[0][2] double 0.001 on passengers store result entity @s[tag=maddons.head] item.components."minecraft:custom_data".magical_addons.colors[0][2] double 0.001 on vehicle run scoreboard players operation @s maddons.animation /= #255 maddons.constant

## Merge start frame into colors
execute on passengers as @s[tag=maddons.head] run data modify entity @s item.components."minecraft:custom_model_data".colors set from entity @s item.components."minecraft:custom_data".magical_addons.colors
data modify entity @s item.components."minecraft:custom_model_data".colors set from entity @s item.components."minecraft:custom_data".magical_addons.colors