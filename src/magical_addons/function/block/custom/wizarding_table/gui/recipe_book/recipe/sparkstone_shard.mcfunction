# block:custom/wizarding_table/gui/recipe_book/recipe/sparkstone_shard
# called by: block:custom/wizarding_table/gui/recipe_book_category*

item replace block ~ ~ ~ container.15 with echo_shard[max_stack_size=1,max_damage=100,custom_data={magical_addons:{gui:1}}]
item replace block ~ ~ ~ container.17 with structure_void[max_stack_size=1,max_damage=100,damage=0,item_model="air",item_name={"translate":"item.magical_addons.sparkstone_shard"},rarity=common,tooltip_display={hidden_components:["minecraft:damage"]},custom_data={magical_addons:{gui:1}}]