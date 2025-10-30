# block:custom/golden_oak_sapling/grow
# called by: block:group/custom/sapling/grow

execute unless score @s maddons.cooldown matches 100.. run return run scoreboard players add @s maddons.cooldown 1

## Get rid of structure void that blocks feature from generating
setblock ~ ~ ~ air

place feature magical_addons:golden_trees
kill @s