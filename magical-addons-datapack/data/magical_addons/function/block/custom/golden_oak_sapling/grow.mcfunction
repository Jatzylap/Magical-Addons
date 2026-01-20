# block:custom/golden_oak_sapling/grow
# called by: block:group/custom/sapling/grow

execute unless score @s maddons.cooldown matches 100.. run return run scoreboard players add @s maddons.cooldown 1

## Place feature cmd does not work at high altitudes for some reason
#place feature magical_addons:golden_trees
execute store result score #magical_addons:golden_tree maddons.temp run random value 0..2
execute if score #magical_addons:golden_tree maddons.temp matches 0..1 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-2,name:"magical_addons:golden_oak"}
execute if score #magical_addons:golden_tree maddons.temp matches 2 run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-7,posY:0,posZ:-6,name:"magical_addons:golden_oak_fancy"}
execute if score #magical_addons:golden_tree maddons.temp matches 0.. run setblock ~ ~1 ~ redstone_block

kill