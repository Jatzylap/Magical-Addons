# entity:sculk_spider/death
# called by: entity:sculk_spider/loop

scoreboard players add @s maddons.death 1

execute if score @s maddons.death matches 2.. run return run execute if score @s maddons.death matches 18.. run function magical_addons:entity/kill

function magical_addons:entity/sculk_spider/moves/death