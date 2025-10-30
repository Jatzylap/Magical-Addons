# block:custom/wizarding_table/recipes
# called by: block:custom/wizarding_table/gui/main

scoreboard players reset @s maddons.craft

## Recipe definitions
execute if function magical_addons:block/custom/wizarding_table/recipe/sparkstone_shard run return 1
execute if function magical_addons:block/custom/wizarding_table/recipe/sparkstone run return 1
execute if function magical_addons:block/custom/wizarding_table/recipe/gravitite_block run return 1
execute if function magical_addons:block/custom/wizarding_table/recipe/gravitite_helmet run return 1
execute if function magical_addons:block/custom/wizarding_table/recipe/gravitite_chestplate run return 1
execute if function magical_addons:block/custom/wizarding_table/recipe/gravitite_leggings run return 1
execute if function magical_addons:block/custom/wizarding_table/recipe/gravitite_boots run return 1
execute if function magical_addons:block/custom/wizarding_table/recipe/sparkstone_orb run return 1

item replace block ~ ~ ~ container.16 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1,result:1}},tooltip_display={hide_tooltip:true}]
return 0