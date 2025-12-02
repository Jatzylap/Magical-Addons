# block:custom/wizarding_table/recipe/aether_portal
# called by: block:custom/wizarding_table/recipes

execute store success score @s maddons.craft if items block ~ ~ ~ container.2 minecraft:white_bed \
											 unless items block ~ ~ ~ container.3 * \
											 unless items block ~ ~ ~ container.4 * \
											 unless items block ~ ~ ~ container.11 * \
											 unless items block ~ ~ ~ container.12 * \
											 unless items block ~ ~ ~ container.13 * \
											 unless items block ~ ~ ~ container.20 * \
											 unless items block ~ ~ ~ container.21 * \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:aether_portal
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 if items block ~ ~ ~ container.3 minecraft:white_bed \
											 unless items block ~ ~ ~ container.4 * \
											 unless items block ~ ~ ~ container.11 * \
											 unless items block ~ ~ ~ container.12 * \
											 unless items block ~ ~ ~ container.13 * \
											 unless items block ~ ~ ~ container.20 * \
											 unless items block ~ ~ ~ container.21 * \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:aether_portal
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 unless items block ~ ~ ~ container.3 * \
											 if items block ~ ~ ~ container.4 minecraft:white_bed \
											 unless items block ~ ~ ~ container.11 * \
											 unless items block ~ ~ ~ container.12 * \
											 unless items block ~ ~ ~ container.13 * \
											 unless items block ~ ~ ~ container.20 * \
											 unless items block ~ ~ ~ container.21 * \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:aether_portal
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 unless items block ~ ~ ~ container.3 * \
											 unless items block ~ ~ ~ container.4 * \
											 if items block ~ ~ ~ container.11 minecraft:white_bed \
											 unless items block ~ ~ ~ container.12 * \
											 unless items block ~ ~ ~ container.13 * \
											 unless items block ~ ~ ~ container.20 * \
											 unless items block ~ ~ ~ container.21 * \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:aether_portal
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 unless items block ~ ~ ~ container.3 * \
											 unless items block ~ ~ ~ container.4 * \
											 unless items block ~ ~ ~ container.11 * \
											 if items block ~ ~ ~ container.12 minecraft:white_bed \
											 unless items block ~ ~ ~ container.13 * \
											 unless items block ~ ~ ~ container.20 * \
											 unless items block ~ ~ ~ container.21 * \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:aether_portal
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 unless items block ~ ~ ~ container.3 * \
											 unless items block ~ ~ ~ container.4 * \
											 unless items block ~ ~ ~ container.11 * \
											 unless items block ~ ~ ~ container.12 * \
											 if items block ~ ~ ~ container.13 minecraft:white_bed \
											 unless items block ~ ~ ~ container.20 * \
											 unless items block ~ ~ ~ container.21 * \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:aether_portal
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 unless items block ~ ~ ~ container.3 * \
											 unless items block ~ ~ ~ container.4 * \
											 unless items block ~ ~ ~ container.11 * \
											 unless items block ~ ~ ~ container.12 * \
											 unless items block ~ ~ ~ container.13 * \
											 if items block ~ ~ ~ container.20 minecraft:white_bed \
											 unless items block ~ ~ ~ container.21 * \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:aether_portal
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 unless items block ~ ~ ~ container.3 * \
											 unless items block ~ ~ ~ container.4 * \
											 unless items block ~ ~ ~ container.11 * \
											 unless items block ~ ~ ~ container.12 * \
											 unless items block ~ ~ ~ container.13 * \
											 unless items block ~ ~ ~ container.20 * \
											 if items block ~ ~ ~ container.21 minecraft:white_bed \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:aether_portal
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 unless items block ~ ~ ~ container.3 * \
											 unless items block ~ ~ ~ container.4 * \
											 unless items block ~ ~ ~ container.11 * \
											 unless items block ~ ~ ~ container.12 * \
											 unless items block ~ ~ ~ container.13 * \
											 unless items block ~ ~ ~ container.20 * \
											 unless items block ~ ~ ~ container.21 * \
											 if items block ~ ~ ~ container.22 minecraft:white_bed run loot replace block ~ ~ ~ container.16 loot magical_addons:aether_portal

return run scoreboard players get @s maddons.craft