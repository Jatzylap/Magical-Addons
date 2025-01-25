# block:custom/wizarding_table/gui/recipe_book/category1/suggest
# called by: block:custom/wizarding_table/gui/reset

## Baton
execute if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.15 with stick[custom_data={magical_addons:{gui:1}}]
execute if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.17 with stick[item_name='{"translate":"item.magical_addons.wand"}',custom_data={magical_addons:{gui:1}}]

## Sparkstone Pickaxe
#execute if score @s maddons.wizarding_table_page matches 2 run loot replace block ~ ~ ~ container.5 loot magical_addons:items/sparkstone_shard
#execute if score @s maddons.wizarding_table_page matches 2 run loot replace block ~ ~ ~ container.6 loot magical_addons:items/sparkstone_shard
#execute if score @s maddons.wizarding_table_page matches 2 run loot replace block ~ ~ ~ container.7 loot magical_addons:items/sparkstone_shard
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.15 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.24 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[custom_data={magical_addons:{gui:1}},item_model="magical_addons:gui/wizarding_table",item_name='{"translate":"item.minecraft.sparkstone_pickaxe"}']
#
### Fire Rod
#execute if score @s maddons.wizarding_table_page matches 3 run item replace block ~ ~ ~ container.23 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 3 run item replace block ~ ~ ~ container.15 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 3 run item replace block ~ ~ ~ container.7 with blaze_powder[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 3 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[custom_data={magical_addons:{gui:1}},item_model="magical_addons:gui/wizarding_table",item_name='{"translate":"item.minecraft.fire_rod"}']
#
### Ice Rod
#execute if score @s maddons.wizarding_table_page matches 4 run item replace block ~ ~ ~ container.23 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 4 run item replace block ~ ~ ~ container.15 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 4 run item replace block ~ ~ ~ container.7 with ice[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 4 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[custom_data={magical_addons:{gui:1}},item_model="magical_addons:gui/wizarding_table",item_name='{"translate":"item.minecraft.ice_rod"}']
#
### Cursed Rod
#execute if score @s maddons.wizarding_table_page matches 5 run item replace block ~ ~ ~ container.23 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 5 run item replace block ~ ~ ~ container.15 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 5 run item replace block ~ ~ ~ container.7 with amethyst_shard[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 5 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[custom_data={magical_addons:{gui:1}},item_model="magical_addons:gui/wizarding_table",item_name='{"translate":"item.minecraft.cursed_rod"}']
#
### Water Rod
#execute if score @s maddons.wizarding_table_page matches 6 run item replace block ~ ~ ~ container.23 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 6 run item replace block ~ ~ ~ container.15 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 6 run item replace block ~ ~ ~ container.7 with water_bucket[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 6 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[custom_data={magical_addons:{gui:1}},item_model="magical_addons:gui/wizarding_table",item_name='{"translate":"item.minecraft.water_rod"}']
#
### Rod of Commanding
#execute if score @s maddons.wizarding_table_page matches 7 run item replace block ~ ~ ~ container.23 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 7 run item replace block ~ ~ ~ container.15 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 7 run item replace block ~ ~ ~ container.7 with ender_eye[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 7 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[custom_data={magical_addons:{gui:1}},item_model="magical_addons:gui/wizarding_table",item_name='{"translate":"item.minecraft.commanding_rod"}']
#
### Rod of Blocking
#execute if score @s maddons.wizarding_table_page matches 8 run item replace block ~ ~ ~ container.23 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 8 run item replace block ~ ~ ~ container.15 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 8 run item replace block ~ ~ ~ container.7 with obsidian[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 8 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[custom_data={magical_addons:{gui:1}},item_model="magical_addons:gui/wizarding_table",item_name='{"translate":"item.minecraft.blocking_rod"}']
#
### Earth Rod
#execute if score @s maddons.wizarding_table_page matches 9 run item replace block ~ ~ ~ container.23 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 9 run item replace block ~ ~ ~ container.15 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 9 run item replace block ~ ~ ~ container.7 with grass_block[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 9 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[custom_data={magical_addons:{gui:1}},item_model="magical_addons:gui/wizarding_table",item_name='{"translate":"item.minecraft.earth_rod"}']
#
### Sonic Rod
#execute if score @s maddons.wizarding_table_page matches 10 run item replace block ~ ~ ~ container.23 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 10 run item replace block ~ ~ ~ container.15 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 10 run item replace block ~ ~ ~ container.7 with echo_shard[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 10 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[custom_data={magical_addons:{gui:1}},item_model="magical_addons:gui/wizarding_table",item_name='{"translate":"item.minecraft.sonic_rod"}']
#
### Healing Rod
#execute if score @s maddons.wizarding_table_page matches 11 run item replace block ~ ~ ~ container.23 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 11 run item replace block ~ ~ ~ container.15 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 11 run item replace block ~ ~ ~ container.7 with totem_of_undying[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 11 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[custom_data={magical_addons:{gui:1}},item_model="magical_addons:gui/wizarding_table",item_name='{"translate":"item.minecraft.healing_rod"}']
#
### Wind Rod
#execute if score @s maddons.wizarding_table_page matches 12 run item replace block ~ ~ ~ container.23 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 12 run item replace block ~ ~ ~ container.15 with stick[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 12 run item replace block ~ ~ ~ container.7 with phantom_membrane[custom_data={magical_addons:{gui:1}}]
#execute if score @s maddons.wizarding_table_page matches 12 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[custom_data={magical_addons:{gui:1}},item_model="magical_addons:gui/wizarding_table",item_name='{"translate":"item.minecraft.wind_rod"}']