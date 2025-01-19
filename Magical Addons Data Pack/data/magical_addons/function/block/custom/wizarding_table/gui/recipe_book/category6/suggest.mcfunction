# block:custom/wizarding_table/gui/recipe_book/category6/suggest
# called by: block:custom/wizarding_table/gui/reset

## Sparkstone
#execute if score @s maddons.wizarding_table_page matches 1 run loot replace block ~ ~ ~ container.5 loot magical_addons:items/sparkstone_shard
#execute if score @s maddons.wizarding_table_page matches 1 run loot replace block ~ ~ ~ container.6 loot magical_addons:items/sparkstone_shard
#execute if score @s maddons.wizarding_table_page matches 1 run loot replace block ~ ~ ~ container.14 loot magical_addons:items/sparkstone_shard
#execute if score @s maddons.wizarding_table_page matches 1 run loot replace block ~ ~ ~ container.15 loot magical_addons:items/sparkstone_shard
#execute if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[minecraft:custom_data={maddons.gui:1},minecraft:custom_model_data=9999,minecraft:item_name='{"translate":"item.minecraft.sparkstone"}']
#
### Echostone
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.5 with echo_shard[minecraft:custom_data={maddons.gui:1}]
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.6 with echo_shard[minecraft:custom_data={maddons.gui:1}]
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.14 with echo_shard[minecraft:custom_data={maddons.gui:1}]
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.15 with echo_shard[minecraft:custom_data={maddons.gui:1}]
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[minecraft:custom_data={maddons.gui:1},minecraft:custom_model_data=9999,minecraft:item_name='{"translate":"item.minecraft.echostone"}']
#
### Moonstone
#execute if score @s maddons.wizarding_table_page matches 3 run loot replace block ~ ~ ~ container.5 loot magical_addons:items/moonstone_dust
#execute if score @s maddons.wizarding_table_page matches 3 run loot replace block ~ ~ ~ container.6 loot magical_addons:items/moonstone_dust
#execute if score @s maddons.wizarding_table_page matches 3 run loot replace block ~ ~ ~ container.14 loot magical_addons:items/moonstone_dust
#execute if score @s maddons.wizarding_table_page matches 3 run loot replace block ~ ~ ~ container.15 loot magical_addons:items/moonstone_dust
#execute if score @s maddons.wizarding_table_page matches 3 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[minecraft:custom_data={maddons.gui:1},minecraft:custom_model_data=9999,minecraft:item_name='{"translate":"item.minecraft.moonstone"}']


## set parameters ##
execute if score @s maddons.wizarding_table_page matches 1.. run data modify block ~ ~ ~ Items[{Slot:5b}].components."minecraft:custom_data".magical_addons merge value {gui:1}
execute if score @s maddons.wizarding_table_page matches 1.. run data modify block ~ ~ ~ Items[{Slot:6b}].components."minecraft:custom_data".magical_addons merge value {gui:1}
execute if score @s maddons.wizarding_table_page matches 1.. run data modify block ~ ~ ~ Items[{Slot:7b}].components."minecraft:custom_data".magical_addons merge value {gui:1}
execute if score @s maddons.wizarding_table_page matches 1.. run data modify block ~ ~ ~ Items[{Slot:14b}].components."minecraft:custom_data".magical_addons merge value {gui:1}
execute if score @s maddons.wizarding_table_page matches 1.. run data modify block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_data".magical_addons merge value {gui:1}
execute if score @s maddons.wizarding_table_page matches 1.. run data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_data".magical_addons merge value {gui:1,result:1}
execute if score @s maddons.wizarding_table_page matches 1.. run data modify block ~ ~ ~ Items[{Slot:23b}].components."minecraft:custom_data".magical_addons merge value {gui:1}
execute if score @s maddons.wizarding_table_page matches 1.. run data modify block ~ ~ ~ Items[{Slot:24b}].components."minecraft:custom_data".magical_addons merge value {gui:1}
execute if score @s maddons.wizarding_table_page matches 1.. run data modify block ~ ~ ~ Items[{Slot:25b}].components."minecraft:custom_data".magical_addons merge value {gui:1}