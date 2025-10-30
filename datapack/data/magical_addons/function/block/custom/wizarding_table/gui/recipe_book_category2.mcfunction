# block:custom/wizarding_table/gui/recipe_book_category2
# called by: block:custom/wizarding_table/update_gui

## Exit
execute if entity @s[tag=maddons.block.rb.c2_] unless data block ~ ~ ~ {Items:[{Slot:3b}]} run return run function magical_addons:block/custom/wizarding_table/gui/recipe_book/close_category2

## Sounds
execute if entity @s[tag=maddons.block.rb.c2_] unless data block ~ ~ ~ {Items:[{Slot:8b}]} unless score @s maddons.wizarding_table_page matches ..0 run playsound ui.button.click ui @p ~ ~ ~ .3
execute if entity @s[tag=maddons.block.rb.c2_] unless data block ~ ~ ~ {Items:[{Slot:26b}]} unless score @s maddons.wizarding_table_page matches 2.. run playsound ui.button.click ui @p ~ ~ ~ .3

## Scroll
execute if entity @s[tag=maddons.block.rb.c2_] unless data block ~ ~ ~ {Items:[{Slot:8b}]} unless score @s maddons.wizarding_table_page matches ..0 run scoreboard players remove @s maddons.wizarding_table_page 1
execute if entity @s[tag=maddons.block.rb.c2_] unless data block ~ ~ ~ {Items:[{Slot:26b}]} unless score @s maddons.wizarding_table_page matches 2.. run scoreboard players add @s maddons.wizarding_table_page 1

## Save out-of-bound items
execute if items block ~ ~ ~ container.0 * unless items block ~ ~ ~ container.0 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:0}
execute if items block ~ ~ ~ container.1 * unless items block ~ ~ ~ container.1 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:1}
execute if items block ~ ~ ~ container.2 * unless items block ~ ~ ~ container.2 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:2}
execute if items block ~ ~ ~ container.3 * unless items block ~ ~ ~ container.3 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:3}
execute if items block ~ ~ ~ container.4 * unless items block ~ ~ ~ container.4 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:4}
execute if items block ~ ~ ~ container.5 * unless items block ~ ~ ~ container.5 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:5}
execute if items block ~ ~ ~ container.6 * unless items block ~ ~ ~ container.6 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:6}
execute if items block ~ ~ ~ container.7 * unless items block ~ ~ ~ container.7 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:7}
execute if items block ~ ~ ~ container.8 * unless items block ~ ~ ~ container.8 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:8}
execute if items block ~ ~ ~ container.9 * unless items block ~ ~ ~ container.9 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:9}
execute if items block ~ ~ ~ container.10 * unless items block ~ ~ ~ container.10 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:10}
execute if items block ~ ~ ~ container.11 * unless items block ~ ~ ~ container.11 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:11}
execute if items block ~ ~ ~ container.12 * unless items block ~ ~ ~ container.12 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:12}
execute if items block ~ ~ ~ container.13 * unless items block ~ ~ ~ container.13 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:13}
execute if items block ~ ~ ~ container.14 * unless items block ~ ~ ~ container.14 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:14}
execute if items block ~ ~ ~ container.15 * unless items block ~ ~ ~ container.15 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:15}
execute if items block ~ ~ ~ container.16 * unless items block ~ ~ ~ container.16 *[custom_data~{magical_addons:{result:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:16}
execute if items block ~ ~ ~ container.17 * unless items block ~ ~ ~ container.17 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:17}
execute if items block ~ ~ ~ container.18 * unless items block ~ ~ ~ container.18 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:18}
execute if items block ~ ~ ~ container.19 * unless items block ~ ~ ~ container.19 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:19}
execute if items block ~ ~ ~ container.20 * unless items block ~ ~ ~ container.20 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:20}
execute if items block ~ ~ ~ container.21 * unless items block ~ ~ ~ container.21 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:21}
execute if items block ~ ~ ~ container.22 * unless items block ~ ~ ~ container.22 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:22}
execute if items block ~ ~ ~ container.23 * unless items block ~ ~ ~ container.23 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:23}
execute if items block ~ ~ ~ container.24 * unless items block ~ ~ ~ container.24 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:24}
execute if items block ~ ~ ~ container.25 * unless items block ~ ~ ~ container.25 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:25}
execute if items block ~ ~ ~ container.26 * unless items block ~ ~ ~ container.26 *[custom_data~{magical_addons:{gui:1}}] run function magical_addons:block/custom/wizarding_table/return {slot:26}

## Category pages
execute if score @s maddons.wizarding_table_page matches 0 run item replace block ~ ~ ~ container.0 with structure_void[max_stack_size=1,max_damage=100,item_model="magical_addons:gui/wizarding_table",custom_model_data={strings:["wt_rb_cg2_s2"]},custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
execute if score @s maddons.wizarding_table_page matches 1 run item replace block ~ ~ ~ container.0 with structure_void[max_stack_size=1,max_damage=100,item_model="magical_addons:gui/wizarding_table",custom_model_data={strings:["wt_rb_cg2_s0"]},custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
execute if score @s maddons.wizarding_table_page matches 2 run item replace block ~ ~ ~ container.0 with structure_void[max_stack_size=1,max_damage=100,item_model="magical_addons:gui/wizarding_table",custom_model_data={strings:["wt_rb_cg2_s1"]},custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]

## Replace
item replace block ~ ~ ~ container.1 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.2 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.3 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.4 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.5 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.6 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.7 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.8 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.9 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.10 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.11 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.12 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.13 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.14 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.15 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.16 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1,result:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.17 with structure_void[max_stack_size=1,max_damage=100,damage=0,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.18 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.19 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.20 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.21 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.22 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.23 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.24 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.25 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.26 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]

## Recipes
## ???

## Orb damage indicator
data modify block ~ ~ ~ Items[{Slot:17b}].components."minecraft:max_damage" set from block ~ ~ ~ components."minecraft:custom_data".magical_addons.max_damage
item modify block ~ ~ ~ container.17 magical_addons:block/wizarding_table/display_damage

tag @s add maddons.block.rb.c2_