# entity:player_display/loop
# called by: main:tick_entity

execute unless score @s maddons.animation matches 1..119 store result entity @s item.components."minecraft:custom_data".magical_addons.frame int 1 run scoreboard players set @s maddons.animation 0
execute store result entity @s item.components."minecraft:custom_data".magical_addons.frame int 1 run function magical_addons:entity/player_display/animate with entity @s item.components."minecraft:custom_data".magical_addons