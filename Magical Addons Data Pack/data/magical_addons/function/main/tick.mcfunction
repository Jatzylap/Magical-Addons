# main:tick
# called by: #minecraft:tick

execute as @e[type=!player,tag=maddons.entity.tickable] at @s run function magical_addons:entity/tick with entity @s data.magical_addons