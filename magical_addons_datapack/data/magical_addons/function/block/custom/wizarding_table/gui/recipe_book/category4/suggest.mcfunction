# block:custom/wizarding_table/gui/recipe_book/category4/suggest
# called by: block:custom/wizarding_table/gui/reset

### Orb of Echostone
#execute if score @s maddons.wizarding_table_page matches 3 run loot replace block ~ ~ ~ container.6 loot magical_addons:items/sparkstone_potion
#execute if score @s maddons.wizarding_table_page matches 3 run loot replace block ~ ~ ~ container.14 loot magical_addons:items/sparkstone_potion
#execute if score @s maddons.wizarding_table_page matches 3 run loot replace block ~ ~ ~ container.15 loot magical_addons:items/empty_orb
#execute if score @s maddons.wizarding_table_page matches 3 run loot replace block ~ ~ ~ container.16 loot magical_addons:items/sparkstone_potion
#execute if score @s maddons.wizarding_table_page matches 3 run loot replace block ~ ~ ~ container.24 loot magical_addons:items/sparkstone_potion
#execute if score @s maddons.wizarding_table_page matches 3 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[minecraft:custom_data={maddons.gui:1},minecraft:custom_model_data=9999,minecraft:item_name='{"translate":"item.minecraft.sparkstone_orb"}']