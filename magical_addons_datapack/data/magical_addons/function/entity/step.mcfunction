# entity:step
# called by: player:loop

## Set ID
execute positioned ~ ~-1 ~ if block ~ ~ ~ #magical_addons:in_scan unless entity @n[type=item_display,tag=maddons.block,distance=...5] run function magical_addons:block/set_id

## Set threshold
scoreboard players set @s maddons.step 3000

## Get speed
execute store result score @s maddons.walk2 run attribute @s minecraft:movement_speed get 1000

## Count step
scoreboard players operation @s maddons.stepping += @s maddons.walk2

## Result + Reset
execute if score @s maddons.step <= @s maddons.stepping on passengers as @s[tag=maddons.step_sound] run function magical_addons:block/sound with entity @s data