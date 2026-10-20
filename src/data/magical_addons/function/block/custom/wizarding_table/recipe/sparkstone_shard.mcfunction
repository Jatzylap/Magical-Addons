# block:custom/wizarding_table/recipe/sparkstone_shard
# called by: block:custom/wizarding_table/recipes

execute store success score @s maddons.craft if items block ~ ~ ~ container.2 minecraft:echo_shard \
											 unless items block ~ ~ ~ container.3 * \
											 unless items block ~ ~ ~ container.4 * \
											 unless items block ~ ~ ~ container.11 * \
											 unless items block ~ ~ ~ container.12 * \
											 unless items block ~ ~ ~ container.13 * \
											 unless items block ~ ~ ~ container.20 * \
											 unless items block ~ ~ ~ container.21 * \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone_shard
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 if items block ~ ~ ~ container.3 minecraft:echo_shard \
											 unless items block ~ ~ ~ container.4 * \
											 unless items block ~ ~ ~ container.11 * \
											 unless items block ~ ~ ~ container.12 * \
											 unless items block ~ ~ ~ container.13 * \
											 unless items block ~ ~ ~ container.20 * \
											 unless items block ~ ~ ~ container.21 * \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone_shard
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 unless items block ~ ~ ~ container.3 * \
											 if items block ~ ~ ~ container.4 minecraft:echo_shard \
											 unless items block ~ ~ ~ container.11 * \
											 unless items block ~ ~ ~ container.12 * \
											 unless items block ~ ~ ~ container.13 * \
											 unless items block ~ ~ ~ container.20 * \
											 unless items block ~ ~ ~ container.21 * \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone_shard
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 unless items block ~ ~ ~ container.3 * \
											 unless items block ~ ~ ~ container.4 * \
											 if items block ~ ~ ~ container.11 minecraft:echo_shard \
											 unless items block ~ ~ ~ container.12 * \
											 unless items block ~ ~ ~ container.13 * \
											 unless items block ~ ~ ~ container.20 * \
											 unless items block ~ ~ ~ container.21 * \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone_shard
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 unless items block ~ ~ ~ container.3 * \
											 unless items block ~ ~ ~ container.4 * \
											 unless items block ~ ~ ~ container.11 * \
											 if items block ~ ~ ~ container.12 minecraft:echo_shard \
											 unless items block ~ ~ ~ container.13 * \
											 unless items block ~ ~ ~ container.20 * \
											 unless items block ~ ~ ~ container.21 * \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone_shard
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 unless items block ~ ~ ~ container.3 * \
											 unless items block ~ ~ ~ container.4 * \
											 unless items block ~ ~ ~ container.11 * \
											 unless items block ~ ~ ~ container.12 * \
											 if items block ~ ~ ~ container.13 minecraft:echo_shard \
											 unless items block ~ ~ ~ container.20 * \
											 unless items block ~ ~ ~ container.21 * \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone_shard
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 unless items block ~ ~ ~ container.3 * \
											 unless items block ~ ~ ~ container.4 * \
											 unless items block ~ ~ ~ container.11 * \
											 unless items block ~ ~ ~ container.12 * \
											 unless items block ~ ~ ~ container.13 * \
											 if items block ~ ~ ~ container.20 minecraft:echo_shard \
											 unless items block ~ ~ ~ container.21 * \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone_shard
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 unless items block ~ ~ ~ container.3 * \
											 unless items block ~ ~ ~ container.4 * \
											 unless items block ~ ~ ~ container.11 * \
											 unless items block ~ ~ ~ container.12 * \
											 unless items block ~ ~ ~ container.13 * \
											 unless items block ~ ~ ~ container.20 * \
											 if items block ~ ~ ~ container.21 minecraft:echo_shard \
											 unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone_shard
execute store success score @s maddons.craft unless items block ~ ~ ~ container.2 * \
											 unless items block ~ ~ ~ container.3 * \
											 unless items block ~ ~ ~ container.4 * \
											 unless items block ~ ~ ~ container.11 * \
											 unless items block ~ ~ ~ container.12 * \
											 unless items block ~ ~ ~ container.13 * \
											 unless items block ~ ~ ~ container.20 * \
											 unless items block ~ ~ ~ container.21 * \
											 if items block ~ ~ ~ container.22 minecraft:echo_shard run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone_shard

return run scoreboard players get @s maddons.craft