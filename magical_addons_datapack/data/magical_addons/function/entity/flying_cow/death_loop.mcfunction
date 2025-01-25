# entity:flying_cow/death_loop
# called by: entity:flying_cow/loop

execute if score @s maddons.death matches ..17 run scoreboard players add @s maddons.death 1
execute if score @s maddons.death matches 18 run function magical_addons:entity/kill