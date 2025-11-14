# player:death_by_chicken
# called by advancement: player:death_by_chicken

execute store result score #maddons.gamerule maddons.temp run gamerule forgiveDeadPlayers
execute if score #maddons.gamerule maddons.temp matches 1 as @e[type=chicken,tag=maddons.chicken.anger,distance=..100] at @s run function magical_addons:entity/chicken/anger/forget

advancement revoke @s only magical_addons:---/player/death_by_chicken