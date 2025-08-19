# block:custom/wizarding_table/recipe/gravitite_chestplate
# called by: block:custom/wizarding_table/gui/craft

execute store success score @s maddons.craft if items block ~ ~ ~ container.2 *[custom_data~{magical_addons:{id:"gravitite"}}] \
											 unless items block ~ ~ ~ container.3 * \
											 if items block ~ ~ ~ container.4 *[custom_data~{magical_addons:{id:"gravitite"}}] \
											 if items block ~ ~ ~ container.11 *[custom_data~{magical_addons:{id:"gravitite"}}] \
											 if items block ~ ~ ~ container.12 *[custom_data~{magical_addons:{id:"gravitite"}}] \
											 if items block ~ ~ ~ container.13 *[custom_data~{magical_addons:{id:"gravitite"}}] \
											 if items block ~ ~ ~ container.20 *[custom_data~{magical_addons:{id:"gravitite"}}] \
											 if items block ~ ~ ~ container.21 *[custom_data~{magical_addons:{id:"gravitite"}}] \
											 if items block ~ ~ ~ container.22 *[custom_data~{magical_addons:{id:"gravitite"}}] run loot replace block ~ ~ ~ container.16 loot magical_addons:gravitite_chestplate

execute if score @s maddons.craft matches 1 run data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_data".magical_addons merge value {gui:0,result:1}
return run scoreboard players get @s maddons.craft