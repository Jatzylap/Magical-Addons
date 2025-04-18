# block:custom/wizarding_table/damage_from_block
# called by: block:custom/wizarding_table/engage

execute store result score @s maddons.max_damage store result score @s maddons.damage run data get block ~ ~ ~ Items[{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone_orb"}}}}].components."minecraft:max_damage"
execute store result score @s maddons.temp run data get block ~ ~ ~ Items[{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone_orb"}}}}].components."minecraft:damage" 
scoreboard players operation @s maddons.damage -= @s maddons.temp