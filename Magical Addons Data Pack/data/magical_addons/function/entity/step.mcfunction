# entity:step
# called by: player:loop

## Skip
execute if entity @s[nbt={OnGround:0b}] run return run scoreboard players set @s maddons.stepping 1600

## Set threshold
execute if entity @s[nbt={OnGround:1b}] run scoreboard players set @s maddons.step 1600

## Get speed
execute if entity @s[nbt={OnGround:1b}] run execute store result score @s maddons.walk2 run attribute @s minecraft:movement_speed get 1000

## Count step
execute if entity @s[nbt={OnGround:1b}] run scoreboard players operation @s maddons.stepping += @s maddons.walk2

## Result + Reset
execute if entity @s[nbt={OnGround:1b}] run execute if score @s maddons.step <= @s maddons.stepping run function magical_addons:block/sound with block ~ ~-1 ~ components."minecraft:custom_data".magical_addons