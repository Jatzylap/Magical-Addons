# entity:chicken/anger/set
# called by advancement: entity:hit_chicken

execute as @e[distance=..12,type=chicken,tag=!maddons.chicken.anger] at @s run scoreboard players add @s maddons.chicken.anger 100
tag @e[distance=..12,scores={maddons.chicken.anger=300..},type=chicken] add maddons.chicken.anger
execute as @e[distance=..12,scores={maddons.chicken.anger=300..},type=chicken] at @s run data merge entity @s {DeathLootTable:"",data:{magical_addons:{tick_cmd:"function magical_addons:entity/chicken/anger/loop"}}}
tag @e[distance=..12,type=chicken,tag=maddons.chicken.anger] add maddons.entity.tickable
execute as @e[distance=..12,scores={maddons.chicken.anger=300..},type=chicken] at @s run particle angry_villager ~ ~ ~ .1 .1 .1 1 2 normal
execute as @e[distance=..12,scores={maddons.chicken.anger=300..},type=chicken] at @s run playsound magical_addons:entity.chicken.angry hostile @a ~ ~ ~ .5
advancement revoke @s only magical_addons:---/entity/hit_chicken