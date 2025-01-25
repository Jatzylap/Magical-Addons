# block:custom/wizarding_table/gui/recipe_book/category3/suggest
# called by: block:custom/wizarding_table/gui/reset

## Staff of Alatar
#execute if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.7 with nether_star[minecraft:custom_data={maddons.gui:1}]
#execute if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.15 with stick[minecraft:custom_data={maddons.gui:1}]
#execute if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.23 with stick[minecraft:custom_data={maddons.gui:1}]
#execute if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.17 with warped_fungus_on_a_stick[minecraft:custom_data={maddons.gui:1},minecraft:custom_model_data=9999,minecraft:item_name='{"translate":"item.minecraft.alatar_staff"}']