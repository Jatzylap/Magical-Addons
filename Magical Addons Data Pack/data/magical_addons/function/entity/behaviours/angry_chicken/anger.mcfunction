# entity:behaviours/angry_chicken/anger
# called by advancement: entity:hit_angry_chicken

execute as @e[distance=..12,type=chicken] at @s run scoreboard players add @s maddons.angry_chicken 100
tag @e[distance=..12,scores={maddons.angry_chicken=300..},type=chicken] add maddons.angry_chicken
execute as @e[distance=..12,scores={maddons.angry_chicken=300..},type=chicken] at @s run data merge entity @s {DeathLootTable:""}
execute as @e[distance=..12,type=chicken,tag=maddons.angry_chicken,tag=!maddons.registered] at @s run function magical_addons:dev/register_entity {id:"angry_chicken",cmd:"function magical_addons:entity/behaviours/angry_chicken/loop"}
execute as @e[distance=..12,scores={maddons.angry_chicken=300..},type=chicken] at @s run particle angry_villager ~ ~ ~ .1 .1 .1 1 2 normal
execute as @e[distance=..12,scores={maddons.angry_chicken=300..},type=chicken] at @s run playsound magical_addons:entity.chicken.angry hostile @a ~ ~ ~ .5
advancement revoke @s only magical_addons:---/entity/hit_angry_chicken