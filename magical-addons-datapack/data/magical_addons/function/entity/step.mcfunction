# entity:step
# called by: player:tick

## Set ID
execute positioned ~ ~-1 ~ if block ~ ~ ~ #magical_addons:in_scan unless entity @n[type=item_display,tag=maddons.block,distance=...5] run function magical_addons:block/set_id

## Set threshold
execute store result score @s maddons.step run data get entity @s data.magical_addons.sound_time 1000

## Get speed
execute store result score @s maddons.walk_ run attribute @s minecraft:movement_speed get 1000

## Count step
scoreboard players operation @s maddons.stepping += @s maddons.walk_

## Result + Reset
execute if score @s maddons.step <= @s maddons.stepping run function magical_addons:block/sound with entity @s data.magical_addons