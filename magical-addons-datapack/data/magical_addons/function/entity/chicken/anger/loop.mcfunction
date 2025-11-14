# entity:chicken/anger/loop
# called by: main:tick_entity

execute if score @s maddons.chicken.anger matches 1.. facing entity @p[gamemode=!creative,gamemode=!spectator] feet run tp @s ^ ^ ^.25 facing entity @p[gamemode=!creative,gamemode=!spectator] feet
execute if score @s maddons.chicken.anger matches 1.. run data modify entity @s OnGround set value 0b
execute if score @s maddons.chicken.anger matches 1.. positioned ^ ^ ^0.25 as @a[dy=1] at @s run damage @s 1.5 mob_attack by @n[type=chicken,tag=maddons.chicken.anger]
execute if score @s maddons.chicken.anger matches 1.. run scoreboard players remove @s maddons.chicken.anger 1
execute if score @s maddons.chicken.anger matches ..0 run function magical_addons:entity/chicken/anger/forget