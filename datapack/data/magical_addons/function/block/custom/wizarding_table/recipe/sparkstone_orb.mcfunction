# block:custom/wizarding_table/recipe/sparkstone_orb
# called by: block:custom/wizarding_table/recipes

execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 if items block ~ ~ ~ container.3 *[custom_data~{magical_addons:{id:"gravitite"}}] \
											 unless items block ~ ~ ~ container.4 * \
											 if items block ~ ~ ~ container.11 *[custom_data~{magical_addons:{id:"gravitite"}}] \
											 if items block ~ ~ ~ container.12 *[custom_data~{magical_addons:{id:"sparkstone"}}] \
											 if items block ~ ~ ~ container.13 *[custom_data~{magical_addons:{id:"gravitite"}}] \
											 unless items block ~ ~ ~ container.20 * \
											 if items block ~ ~ ~ container.21 *[custom_data~{magical_addons:{id:"gravitite"}}] \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone_orb
return run scoreboard players get @s maddons.craft