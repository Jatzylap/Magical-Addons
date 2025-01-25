# block:custom/wizarding_table/gui/recipe_book/scroll_down
# called by: block:custom/wizarding_table/gui/recipes

execute if score @s[tag=maddons.wt_rb_cg1] maddons.wizarding_table_page matches 1..11 run playsound ui.button.click master @a ~ ~ ~ .2
execute if score @s[tag=maddons.wt_rb_cg1] maddons.wizarding_table_page matches 1..11 run scoreboard players add @s maddons.wizarding_table_page 1

execute if score @s[tag=maddons.wt_rb_cg2] maddons.wizarding_table_page matches 1..3 run playsound ui.button.click master @a ~ ~ ~ .2
execute if score @s[tag=maddons.wt_rb_cg2] maddons.wizarding_table_page matches 1..3 run scoreboard players add @s maddons.wizarding_table_page 1

execute if score @s[tag=maddons.wt_rb_cg4] maddons.wizarding_table_page matches 1 run playsound ui.button.click master @a ~ ~ ~ .2
execute if score @s[tag=maddons.wt_rb_cg4] maddons.wizarding_table_page matches 1 run scoreboard players add @s maddons.wizarding_table_page 1

execute if score @s[tag=maddons.wt_rb_cg5] maddons.wizarding_table_page matches 1..5 run playsound ui.button.click master @a ~ ~ ~ .2
execute if score @s[tag=maddons.wt_rb_cg5] maddons.wizarding_table_page matches 1..5 run scoreboard players add @s maddons.wizarding_table_page 1

execute if score @s[tag=maddons.wt_rb_cg6] maddons.wizarding_table_page matches 1..2 run playsound ui.button.click master @a ~ ~ ~ .2
execute if score @s[tag=maddons.wt_rb_cg6] maddons.wizarding_table_page matches 1..2 run scoreboard players add @s maddons.wizarding_table_page 1

execute if score @s[tag=maddons.wt_rb_cg7] maddons.wizarding_table_page matches 1..3 run playsound ui.button.click master @a ~ ~ ~ .2
execute if score @s[tag=maddons.wt_rb_cg7] maddons.wizarding_table_page matches 1..3 run scoreboard players add @s maddons.wizarding_table_page 1