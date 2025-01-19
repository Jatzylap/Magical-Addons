# block:custom/wizarding_table/gui/recipes
# called by: block:custom/wizarding_table/gui

## RB Category Buttons
execute at @s[tag=maddons.wt_rb] unless data block ~ ~ ~ Items[{Slot:2b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run playsound ui.button.click master @a ~ ~ ~ .2
execute at @s[tag=maddons.wt_rb] unless data block ~ ~ ~ Items[{Slot:3b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run playsound ui.button.click master @a ~ ~ ~ .2
execute at @s[tag=maddons.wt_rb] unless data block ~ ~ ~ Items[{Slot:4b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run playsound ui.button.click master @a ~ ~ ~ .2
execute at @s[tag=maddons.wt_rb] unless data block ~ ~ ~ Items[{Slot:11b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run playsound ui.button.click master @a ~ ~ ~ .2
execute at @s[tag=maddons.wt_rb] unless data block ~ ~ ~ Items[{Slot:12b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run playsound ui.button.click master @a ~ ~ ~ .2
execute at @s[tag=maddons.wt_rb] unless data block ~ ~ ~ Items[{Slot:20b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run playsound ui.button.click master @a ~ ~ ~ .2
execute at @s[tag=maddons.wt_rb] unless data block ~ ~ ~ Items[{Slot:21b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run playsound ui.button.click master @a ~ ~ ~ .2
execute unless data block ~ ~ ~ Items[{Slot:2b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run tag @s[tag=maddons.wt_rb_cg1] add maddons.wt_rb_cg_r
execute unless data block ~ ~ ~ Items[{Slot:3b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run tag @s[tag=maddons.wt_rb_cg2] add maddons.wt_rb_cg_r
execute unless data block ~ ~ ~ Items[{Slot:4b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run tag @s[tag=maddons.wt_rb_cg3] add maddons.wt_rb_cg_r
execute unless data block ~ ~ ~ Items[{Slot:11b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run tag @s[tag=maddons.wt_rb_cg4] add maddons.wt_rb_cg_r
execute unless data block ~ ~ ~ Items[{Slot:12b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run tag @s[tag=maddons.wt_rb_cg5] add maddons.wt_rb_cg_r
execute unless data block ~ ~ ~ Items[{Slot:20b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run tag @s[tag=maddons.wt_rb_cg6] add maddons.wt_rb_cg_r
execute unless data block ~ ~ ~ Items[{Slot:21b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run tag @s[tag=maddons.wt_rb_cg7] add maddons.wt_rb_cg_r

scoreboard players set @s[tag=maddons.wt_rb_cg_r] maddons.wizarding_table_page 0
execute unless data block ~ ~ ~ Items[{Slot:9b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run playsound ui.button.click master @a ~ ~ ~ .2
execute unless data block ~ ~ ~ Items[{Slot:9b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run scoreboard players reset @s[tag=maddons.wt_rb] maddons.wizarding_table_page
execute unless data block ~ ~ ~ Items[{Slot:9b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run scoreboard players add @s[tag=!maddons.wt_rb,tag=!off] maddons.wizarding_table_page 0
execute unless data block ~ ~ ~ Items[{Slot:9b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] at @s[tag=maddons.wt_rb] run function magical_addons:block/custom/wizarding_table/gui/clear

## RB Category Pages
execute if score @s[tag=!maddons.wt_rb] maddons.wizarding_table_page matches 0.. run tag @s add maddons.wt_rb_page0
execute at @s[tag=maddons.wt_rb,tag=!maddons.wt_rb_cg_r] if score @s maddons.wizarding_table_page matches 0.. unless data block ~ ~ ~ Items[{Slot:2b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run function magical_addons:block/custom/wizarding_table/gui/recipe_book/category1/set
execute at @s[tag=maddons.wt_rb,tag=!maddons.wt_rb_cg_r] if score @s maddons.wizarding_table_page matches 0.. unless data block ~ ~ ~ Items[{Slot:3b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run function magical_addons:block/custom/wizarding_table/gui/recipe_book/category2/set
execute at @s[tag=maddons.wt_rb,tag=!maddons.wt_rb_cg_r] if score @s maddons.wizarding_table_page matches 0.. unless data block ~ ~ ~ Items[{Slot:4b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run function magical_addons:block/custom/wizarding_table/gui/recipe_book/category3/set
execute at @s[tag=maddons.wt_rb,tag=!maddons.wt_rb_cg_r] if score @s maddons.wizarding_table_page matches 0.. unless data block ~ ~ ~ Items[{Slot:11b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run function magical_addons:block/custom/wizarding_table/gui/recipe_book/category4/set
execute at @s[tag=maddons.wt_rb,tag=!maddons.wt_rb_cg_r] if score @s maddons.wizarding_table_page matches 0.. unless data block ~ ~ ~ Items[{Slot:12b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run function magical_addons:block/custom/wizarding_table/gui/recipe_book/category5/set
execute at @s[tag=maddons.wt_rb,tag=!maddons.wt_rb_cg_r] if score @s maddons.wizarding_table_page matches 0.. unless data block ~ ~ ~ Items[{Slot:20b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run function magical_addons:block/custom/wizarding_table/gui/recipe_book/category6/set
execute at @s[tag=maddons.wt_rb,tag=!maddons.wt_rb_cg_r] if score @s maddons.wizarding_table_page matches 0.. unless data block ~ ~ ~ Items[{Slot:21b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run function magical_addons:block/custom/wizarding_table/gui/recipe_book/category7/set

## RB Page Scrollers
execute if score @s[tag=maddons.wt_rb] maddons.wizarding_table_page matches 1.. unless data block ~ ~ ~ Items[{Slot:8b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run function magical_addons:block/custom/wizarding_table/gui/recipe_book/scroll_up
execute if score @s[tag=maddons.wt_rb] maddons.wizarding_table_page matches 1.. unless data block ~ ~ ~ Items[{Slot:26b,components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}] run function magical_addons:block/custom/wizarding_table/gui/recipe_book/scroll_down

tag @s[tag=maddons.wt_rb_cg_r] remove maddons.wt_rb_cg1
tag @s[tag=maddons.wt_rb_cg_r] remove maddons.wt_rb_cg2
tag @s[tag=maddons.wt_rb_cg_r] remove maddons.wt_rb_cg3
tag @s[tag=maddons.wt_rb_cg_r] remove maddons.wt_rb_cg4
tag @s[tag=maddons.wt_rb_cg_r] remove maddons.wt_rb_cg5
tag @s[tag=maddons.wt_rb_cg_r] remove maddons.wt_rb_cg6
tag @s[tag=maddons.wt_rb_cg_r] remove maddons.wt_rb_cg7
tag @s remove maddons.wt_rb_cg_r

tag @s[scores={maddons.wizarding_table_page=0..}] add maddons.wt_rb

execute unless score @s maddons.wizarding_table_page matches 0.. run tag @s remove maddons.wt_rb_page0
execute unless score @s maddons.wizarding_table_page matches 0.. run tag @s remove maddons.wt_rb_cg1
execute unless score @s maddons.wizarding_table_page matches 0.. run tag @s remove maddons.wt_rb_cg2
execute unless score @s maddons.wizarding_table_page matches 0.. run tag @s remove maddons.wt_rb_cg3
execute unless score @s maddons.wizarding_table_page matches 0.. run tag @s remove maddons.wt_rb_cg4
execute unless score @s maddons.wizarding_table_page matches 0.. run tag @s remove maddons.wt_rb_cg5
execute unless score @s maddons.wizarding_table_page matches 0.. run tag @s remove maddons.wt_rb_cg6
execute unless score @s maddons.wizarding_table_page matches 0.. run tag @s remove maddons.wt_rb_cg7
execute unless score @s maddons.wizarding_table_page matches 0.. run tag @s remove maddons.wt_rb