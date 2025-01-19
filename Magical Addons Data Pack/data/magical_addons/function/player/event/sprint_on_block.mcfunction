# player:event/sprint_on_block
# called by: player:loop

## Set threshold
scoreboard players set @s maddons.step 160

## Skip
execute if score @s maddons.jump matches 1.. run scoreboard players set @s maddons.sprint2 160

## Result + Reset
execute if score @s maddons.step <= @s maddons.sprint2 run function magical_addons:block/sound with block ~ ~-1 ~ components."minecraft:custom_data".magical_addons

## Reset
scoreboard players reset @s maddons.sprint1
scoreboard players reset @s maddons.jump