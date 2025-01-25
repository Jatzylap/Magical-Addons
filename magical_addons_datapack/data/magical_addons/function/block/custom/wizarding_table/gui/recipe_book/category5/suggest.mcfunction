# block:custom/wizarding_table/gui/recipe_book/category5/suggest
# called by: block:custom/wizarding_table/gui/reset

## Empty Orb
#execute if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.6 with glass[minecraft:custom_data={maddons.gui:1}]
#execute if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.14 with glass[minecraft:custom_data={maddons.gui:1}]
#execute if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.16 with glass[minecraft:custom_data={maddons.gui:1}]
#execute if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.24 with glass[minecraft:custom_data={maddons.gui:1}]
#execute if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[minecraft:custom_data={maddons.gui:1},minecraft:custom_model_data=9999,minecraft:item_name='{"translate":"item.minecraft.empty_orb"}']
#
### Orb of Purity
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.6 with milk_bucket[minecraft:custom_data={maddons.gui:1}]
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.14 with honey_bottle[minecraft:custom_data={maddons.gui:1}]
#execute if score @s maddons.wizarding_table_page matches 2 run loot replace block ~ ~ ~ container.15 loot magical_addons:items/empty_orb
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.16 with honey_bottle[minecraft:custom_data={maddons.gui:1}]
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.24 with honey_bottle[minecraft:custom_data={maddons.gui:1}]
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[minecraft:custom_data={maddons.gui:1},minecraft:custom_model_data=9999,minecraft:item_name='{"translate":"item.minecraft.purity_orb"}']
#
### Orb of Sparkstone
#execute if score @s maddons.wizarding_table_page matches 3 run loot replace block ~ ~ ~ container.6 loot magical_addons:items/sparkstone_potion
#execute if score @s maddons.wizarding_table_page matches 3 run loot replace block ~ ~ ~ container.14 loot magical_addons:items/sparkstone_potion
#execute if score @s maddons.wizarding_table_page matches 3 run loot replace block ~ ~ ~ container.15 loot magical_addons:items/empty_orb
#execute if score @s maddons.wizarding_table_page matches 3 run loot replace block ~ ~ ~ container.16 loot magical_addons:items/sparkstone_potion
#execute if score @s maddons.wizarding_table_page matches 3 run loot replace block ~ ~ ~ container.24 loot magical_addons:items/sparkstone_potion
#execute if score @s maddons.wizarding_table_page matches 3 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[minecraft:custom_data={maddons.gui:1},minecraft:custom_model_data=9999,minecraft:item_name='{"translate":"item.minecraft.sparkstone_orb"}']
#
### Orb of Agility
#execute if score @s maddons.wizarding_table_page matches 4 run item replace block ~ ~ ~ container.6 with potion[minecraft:potion_contents={potion:"leaping"}]
#execute if score @s maddons.wizarding_table_page matches 4 run item replace block ~ ~ ~ container.14 with potion[minecraft:potion_contents={potion:"leaping"}]
#execute if score @s maddons.wizarding_table_page matches 4 run loot replace block ~ ~ ~ container.15 loot magical_addons:items/empty_orb
#execute if score @s maddons.wizarding_table_page matches 4 run item replace block ~ ~ ~ container.16 with potion[minecraft:potion_contents={potion:"leaping"}]
#execute if score @s maddons.wizarding_table_page matches 4 run item replace block ~ ~ ~ container.24 with potion[minecraft:potion_contents={potion:"leaping"}]
#execute if score @s maddons.wizarding_table_page matches 4 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[minecraft:custom_data={maddons.gui:1},minecraft:custom_model_data=9999,minecraft:item_name='{"translate":"item.minecraft.agility_orb"}']
#
### Orb of Regeneration
#execute if score @s maddons.wizarding_table_page matches 5 run item replace block ~ ~ ~ container.6 with potion[minecraft:potion_contents={potion:"regeneration"}]
#execute if score @s maddons.wizarding_table_page matches 5 run item replace block ~ ~ ~ container.14 with potion[minecraft:potion_contents={potion:"regeneration"}]
#execute if score @s maddons.wizarding_table_page matches 5 run loot replace block ~ ~ ~ container.15 loot magical_addons:items/empty_orb
#execute if score @s maddons.wizarding_table_page matches 5 run item replace block ~ ~ ~ container.16 with potion[minecraft:potion_contents={potion:"regeneration"}]
#execute if score @s maddons.wizarding_table_page matches 5 run item replace block ~ ~ ~ container.24 with potion[minecraft:potion_contents={potion:"regeneration"}]
#execute if score @s maddons.wizarding_table_page matches 5 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[minecraft:custom_data={maddons.gui:1},minecraft:custom_model_data=9999,minecraft:item_name='{"translate":"item.minecraft.regeneration_orb"}']
#
### Orb of Strengthening
#execute if score @s maddons.wizarding_table_page matches 6 run loot replace block ~ ~ ~ container.6 loot magical_addons:items/sparkstone_potion
#execute if score @s maddons.wizarding_table_page matches 6 run item replace block ~ ~ ~ container.14 with potion[minecraft:potion_contents={potion:"strength"}]
#execute if score @s maddons.wizarding_table_page matches 6 run loot replace block ~ ~ ~ container.15 loot magical_addons:items/empty_orb
#execute if score @s maddons.wizarding_table_page matches 6 run item replace block ~ ~ ~ container.16 with potion[minecraft:potion_contents={potion:"regeneration"}]
#execute if score @s maddons.wizarding_table_page matches 6 run item replace block ~ ~ ~ container.24 with potion[minecraft:potion_contents={potion:"healing"}]
#execute if score @s maddons.wizarding_table_page matches 6 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[minecraft:custom_data={maddons.gui:1},minecraft:custom_model_data=9999,minecraft:item_name='{"translate":"item.minecraft.strengthening_orb"}']