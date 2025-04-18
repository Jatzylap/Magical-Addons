# player:event/death
# called by advancement: player:death

tag @s add maddons.death
execute if entity @s[tag=maddons.dreaming] run function magical_addons:dimension/the_aether/return
execute as @e[type=chicken,tag=maddons.angry_chicken,distance=..100] at @s run function magical_addons:entity/angry_chicken/forget

tag @s remove maddons.death
advancement revoke @s only magical_addons:---/player/death