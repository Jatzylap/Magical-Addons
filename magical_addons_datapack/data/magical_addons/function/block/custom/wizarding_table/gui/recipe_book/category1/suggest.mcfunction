# block:custom/wizarding_table/gui/recipe_book/category1/suggest
# called by: block:custom/wizarding_table/gui/reset

## Baton
execute if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.15 with stick[custom_data={magical_addons:{gui:1}}]
execute if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.17 with charcoal[item_model="air",item_name='{"translate":"item.magical_addons.baton"}',custom_data={magical_addons:{gui:1}}]

## Sparkstone Pickaxe
#execute if score @s maddons.wizarding_table_page matches 2 run loot replace block ~ ~ ~ container.5 loot magical_addons:sparkstone_shard
#execute if score @s maddons.wizarding_table_page matches 2 run loot replace block ~ ~ ~ container.6 loot magical_addons:sparkstone_shard
#execute if score @s maddons.wizarding_table_page matches 2 run loot replace block ~ ~ ~ container.7 loot magical_addons:sparkstone_shard
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.15 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.24 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[custom_data={magical_addons:{gui:1}},item_model="magical_addons:gui/wizarding_table",item_name='{"translate":"item.magical_addons.sparkstone_pickaxe"}']