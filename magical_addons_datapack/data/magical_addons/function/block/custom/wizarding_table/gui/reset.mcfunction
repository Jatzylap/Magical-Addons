# block:custom/wizarding_table/gui/reset
# called by: block:custom/wizarding_table/gui

execute if entity @s[tag=!maddons.wt_rb] run item replace block ~ ~ ~ container.0 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="magical_addons:gui/wizarding_table",custom_data={magical_addons:{gui:1}},custom_model_data={strings:["wt_no_rb"]},hide_tooltip={}]
execute if entity @s[tag=maddons.wt_rb_page0] run item replace block ~ ~ ~ container.0 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="magical_addons:gui/wizarding_table",custom_data={magical_addons:{gui:1}},custom_model_data={strings:["wt_rb_p0"]},hide_tooltip={}]

item replace block ~ ~ ~ container.1 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.5 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.6 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.7 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.8 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.9 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.10 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.14 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.15 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.16 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1,result:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.17 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.18 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.19 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.23 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.24 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.25 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
item replace block ~ ~ ~ container.26 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]

execute if entity @s[tag=maddons.wt_rb] run item replace block ~ ~ ~ container.2 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
execute if entity @s[tag=maddons.wt_rb] run item replace block ~ ~ ~ container.3 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
execute if entity @s[tag=maddons.wt_rb] run item replace block ~ ~ ~ container.4 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
execute if entity @s[tag=maddons.wt_rb] run item replace block ~ ~ ~ container.11 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
execute if entity @s[tag=maddons.wt_rb] run item replace block ~ ~ ~ container.12 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
execute if entity @s[tag=maddons.wt_rb] run item replace block ~ ~ ~ container.13 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
execute if entity @s[tag=maddons.wt_rb] run item replace block ~ ~ ~ container.20 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
execute if entity @s[tag=maddons.wt_rb] run item replace block ~ ~ ~ container.21 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]
execute if entity @s[tag=maddons.wt_rb] run item replace block ~ ~ ~ container.22 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="air",custom_data={magical_addons:{gui:1}},hide_tooltip={}]

## Categories
execute if entity @s[tag=maddons.wt_rb_cg1] if score @s maddons.wizarding_table_page matches 1.. run function magical_addons:block/custom/wizarding_table/gui/recipe_book/category1/suggest
execute if entity @s[tag=maddons.wt_rb_cg2] if score @s maddons.wizarding_table_page matches 1.. run function magical_addons:block/custom/wizarding_table/gui/recipe_book/category2/suggest
execute if entity @s[tag=maddons.wt_rb_cg3] if score @s maddons.wizarding_table_page matches 1.. run function magical_addons:block/custom/wizarding_table/gui/recipe_book/category3/suggest
execute if entity @s[tag=maddons.wt_rb_cg4] if score @s maddons.wizarding_table_page matches 1.. run function magical_addons:block/custom/wizarding_table/gui/recipe_book/category4/suggest
execute if entity @s[tag=maddons.wt_rb_cg5] if score @s maddons.wizarding_table_page matches 1.. run function magical_addons:block/custom/wizarding_table/gui/recipe_book/category5/suggest
execute if entity @s[tag=maddons.wt_rb_cg6] if score @s maddons.wizarding_table_page matches 1.. run function magical_addons:block/custom/wizarding_table/gui/recipe_book/category6/suggest
execute if entity @s[tag=maddons.wt_rb_cg7] if score @s maddons.wizarding_table_page matches 1.. run function magical_addons:block/custom/wizarding_table/gui/recipe_book/category7/suggest
# First Page
execute if entity @s[tag=maddons.wt_rb_cg1] if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.0 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="magical_addons:gui/wizarding_table",custom_data={magical_addons:{gui:1}},custom_model_data={strings:["wt_rb_cg1_s2"]},hide_tooltip={}]
execute if entity @s[tag=maddons.wt_rb_cg2] if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.0 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="magical_addons:gui/wizarding_table",custom_data={magical_addons:{gui:1}},custom_model_data={strings:["wt_rb_cg2_s2"]},hide_tooltip={}]
execute if entity @s[tag=maddons.wt_rb_cg3] if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.0 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="magical_addons:gui/wizarding_table",custom_data={magical_addons:{gui:1}},custom_model_data={strings:["wt_rb_cg3_s2"]},hide_tooltip={}]
execute if entity @s[tag=maddons.wt_rb_cg4] if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.0 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="magical_addons:gui/wizarding_table",custom_data={magical_addons:{gui:1}},custom_model_data={strings:["wt_rb_cg4_s2"]},hide_tooltip={}]
execute if entity @s[tag=maddons.wt_rb_cg5] if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.0 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="magical_addons:gui/wizarding_table",custom_data={magical_addons:{gui:1}},custom_model_data={strings:["wt_rb_cg5_s2"]},hide_tooltip={}]
execute if entity @s[tag=maddons.wt_rb_cg6] if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.0 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="magical_addons:gui/wizarding_table",custom_data={magical_addons:{gui:1}},custom_model_data={strings:["wt_rb_cg6_s2"]},hide_tooltip={}]
execute if entity @s[tag=maddons.wt_rb_cg7] if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.0 with structure_void[max_stack_size=1,max_damage=100,tool={rules:[]},item_model="magical_addons:gui/wizarding_table",custom_data={magical_addons:{gui:1}},custom_model_data={strings:["wt_rb_cg7_s2"]},hide_tooltip={}]
# Middle Pages
execute if entity @s[tag=maddons.wt_rb_cg1] if score @s maddons.wizarding_table_page matches 2..11 run data modify block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_model_data".strings[0] set value "wt_rb_cg1_s0"
execute if entity @s[tag=maddons.wt_rb_cg2] if score @s maddons.wizarding_table_page matches 2..3 run data modify block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_model_data".strings[0] set value "wt_rb_cg2_s0"
execute if entity @s[tag=maddons.wt_rb_cg4] if score @s maddons.wizarding_table_page matches 2..5 run data modify block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_model_data".strings[0] set value "wt_rb_cg4_s0"
execute if entity @s[tag=maddons.wt_rb_cg5] if score @s maddons.wizarding_table_page matches 2..5 run data modify block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_model_data".strings[0] set value "wt_rb_cg5_s0"
execute if entity @s[tag=maddons.wt_rb_cg6] if score @s maddons.wizarding_table_page matches 2 run data modify block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_model_data".strings[0] set value "wt_rb_cg6_s0"
execute if entity @s[tag=maddons.wt_rb_cg7] if score @s maddons.wizarding_table_page matches 2..3 run data modify block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_model_data".strings[0] set value "wt_rb_cg7_s0"
# Last Page
execute if entity @s[tag=maddons.wt_rb_cg1] if score @s maddons.wizarding_table_page matches 12 run data modify block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_model_data".strings[0] set value "wt_rb_cg1_s1"
execute if entity @s[tag=maddons.wt_rb_cg2] if score @s maddons.wizarding_table_page matches 4 run data modify block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_model_data".strings[0] set value "wt_rb_cg2_s1"
execute if entity @s[tag=maddons.wt_rb_cg4] if score @s maddons.wizarding_table_page matches 6 run data modify block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_model_data".strings[0] set value "wt_rb_cg4_s1"
execute if entity @s[tag=maddons.wt_rb_cg5] if score @s maddons.wizarding_table_page matches 6 run data modify block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_model_data".strings[0] set value "wt_rb_cg5_s1"
execute if entity @s[tag=maddons.wt_rb_cg6] if score @s maddons.wizarding_table_page matches 3 run data modify block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_model_data".strings[0] set value "wt_rb_cg6_s1"
execute if entity @s[tag=maddons.wt_rb_cg7] if score @s maddons.wizarding_table_page matches 4 run data modify block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_model_data".strings[0] set value "wt_rb_cg7_s1"

## Damage
execute if entity @s[tag=!maddons.wt_rb] store result block ~ ~ ~ Items[{Slot:10b}].components."minecraft:damage" int 1 run scoreboard players get @s maddons.damage
execute if entity @s[tag=!maddons.wt_rb] run data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:item_name" set value '{"translate":"item.minecraft.sparkstone_orb"}'
execute if entity @s[tag=maddons.wt_rb_page0] store result block ~ ~ ~ Items[{Slot:17b}].components."minecraft:damage" int 1 run scoreboard players get @s maddons.damage
execute if score @s maddons.damage matches 101 run function magical_addons:block/custom/wizarding_table/disengage

## Debug
kill @e[nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}},distance=..1]