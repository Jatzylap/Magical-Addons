# entity:player_display/loop
# called by: main:tick_entity

execute unless score @s maddons.animation matches 1..119 on passengers store result entity @s[type=marker,tag=maddons.data] data.magical_addons.frame int 1 on vehicle run scoreboard players set @s maddons.animation 0
execute on passengers store result entity @s[type=marker,tag=maddons.data] data.magical_addons.frame int 1 run function magical_addons:entity/player_display/animate with entity @s data.magical_addons