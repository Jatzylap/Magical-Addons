# block:custom/wizarding_table/gui/recipe_book/recipe/gravitite_boots
# called by: block:custom/wizarding_table/gui/recipe_book_category*

item replace block ~ ~ ~ container.5 with structure_void[max_stack_size=1,max_damage=100,item_model="magical_addons:gravitite",custom_data={magical_addons:{gui:1}}]
item replace block ~ ~ ~ container.7 with structure_void[max_stack_size=1,max_damage=100,item_model="magical_addons:gravitite",custom_data={magical_addons:{gui:1}}]

item replace block ~ ~ ~ container.14 with structure_void[max_stack_size=1,max_damage=100,item_model="magical_addons:gravitite",custom_data={magical_addons:{gui:1}}]
item replace block ~ ~ ~ container.16 with structure_void[max_stack_size=1,max_damage=100,item_model="magical_addons:gravitite",custom_data={magical_addons:{gui:1,result:1}}]
item replace block ~ ~ ~ container.17 with structure_void[max_stack_size=1,max_damage=100,damage=0,item_model="air",item_name={"translate":"item.magical_addons.gravitite_boots"},rarity=common,tooltip_display={hidden_components:["minecraft:damage"]},custom_data={magical_addons:{gui:1}}]