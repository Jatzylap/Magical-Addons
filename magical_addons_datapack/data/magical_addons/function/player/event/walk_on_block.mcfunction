# player:event/walk_on_block
# called by: player:loop

## Set ID
execute positioned ~ ~-1 ~ if block ~ ~ ~ #magical_addons:in_scan unless entity @n[type=item_display,tag=maddons.block,distance=...5] run function magical_addons:block/set_id

## Set threshold
scoreboard players set @s maddons.step 160

## Skip
execute if score @s maddons.jump matches 1.. run scoreboard players set @s maddons.walk2 160

## Result + Reset
execute if score @s maddons.step <= @s maddons.walk2 run function magical_addons:block/sound with block ~ ~-1 ~ components."minecraft:custom_data".magical_addons

## Reset
scoreboard players reset @s maddons.walk1
scoreboard players reset @s maddons.jump