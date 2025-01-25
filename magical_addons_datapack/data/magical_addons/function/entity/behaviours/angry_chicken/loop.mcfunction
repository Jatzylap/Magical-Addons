# entity:behaviours/angry_chicken/loop
# called by: <dev>

execute if score @s maddons.angry_chicken matches 1.. facing entity @p[gamemode=!creative,gamemode=!spectator] feet run tp @s ^ ^ ^.25 facing entity @p[gamemode=!creative,gamemode=!spectator] feet
execute if score @s maddons.angry_chicken matches 1.. run data modify entity @s OnGround set value 0b
execute if score @s maddons.angry_chicken matches 1.. positioned ^ ^ ^.5 as @a[distance=..1] at @s run damage @s 1.5 mob_attack by @n[type=chicken,tag=maddons.angry_chicken]
execute if score @s maddons.angry_chicken matches 1.. run scoreboard players remove @s maddons.angry_chicken 1
execute if score @s maddons.angry_chicken matches 0 run function magical_addons:entity/behaviours/angry_chicken/forget
execute if entity @s[tag=maddons.blinded] run function magical_addons:entity/behaviours/angry_chicken/forget