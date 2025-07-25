# block:custom/wizarding_table/gui/craft
# called by: block:custom/wizarding_table/gui

scoreboard players reset @s maddons.craft

## Recipes
execute store success score @s maddons.craft if items block ~ ~ ~ container.2 *[custom_data~{magical_addons:{id:sparkstone_shard}}] \
											 if items block ~ ~ ~ container.3 *[custom_data~{magical_addons:{id:sparkstone_shard}}] \
											 if items block ~ ~ ~ container.4 *[custom_data~{magical_addons:{id:sparkstone_shard}}] \
											 if items block ~ ~ ~ container.10 *[custom_data~{magical_addons:{id:sparkstone_shard}}] \
											 if items block ~ ~ ~ container.11 *[custom_data~{magical_addons:{id:sparkstone_shard}}] \
											 if items block ~ ~ ~ container.12 *[custom_data~{magical_addons:{id:sparkstone_shard}}] \
											 if items block ~ ~ ~ container.19 *[custom_data~{magical_addons:{id:sparkstone_shard}}] \
											 if items block ~ ~ ~ container.20 *[custom_data~{magical_addons:{id:sparkstone_shard}}] \
											 if items block ~ ~ ~ container.21 *[custom_data~{magical_addons:{id:sparkstone_shard}}] run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone

execute if score @s maddons.craft matches 1 run data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_data".magical_addons merge value {gui:0,result:1}