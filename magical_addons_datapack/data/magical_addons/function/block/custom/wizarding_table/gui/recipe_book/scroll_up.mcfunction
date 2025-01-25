# block:custom/wizarding_table/gui/recipe_book/scroll_up
# called by: block:custom/wizarding_table/gui/recipes

execute if score @s[tag=maddons.wt_rb_cg1] maddons.wizarding_table_page matches 2..12 run playsound ui.button.click master @a ~ ~ ~ .2
execute if score @s[tag=maddons.wt_rb_cg1] maddons.wizarding_table_page matches 2..12 run scoreboard players remove @s maddons.wizarding_table_page 1

execute if score @s[tag=maddons.wt_rb_cg2] maddons.wizarding_table_page matches 2..4 run playsound ui.button.click master @a ~ ~ ~ .2
execute if score @s[tag=maddons.wt_rb_cg2] maddons.wizarding_table_page matches 2..4 run scoreboard players remove @s maddons.wizarding_table_page 1

execute if score @s[tag=maddons.wt_rb_cg4] maddons.wizarding_table_page matches 1 run playsound ui.button.click master @a ~ ~ ~ .2
execute if score @s[tag=maddons.wt_rb_cg4] maddons.wizarding_table_page matches 1 run scoreboard players remove @s maddons.wizarding_table_page 1

execute if score @s[tag=maddons.wt_rb_cg5] maddons.wizarding_table_page matches 2..6 run playsound ui.button.click master @a ~ ~ ~ .2
execute if score @s[tag=maddons.wt_rb_cg5] maddons.wizarding_table_page matches 2..6 run scoreboard players remove @s maddons.wizarding_table_page 1

execute if score @s[tag=maddons.wt_rb_cg6] maddons.wizarding_table_page matches 2..3 run playsound ui.button.click master @a ~ ~ ~ .2
execute if score @s[tag=maddons.wt_rb_cg6] maddons.wizarding_table_page matches 2..3 run scoreboard players remove @s maddons.wizarding_table_page 1

execute if score @s[tag=maddons.wt_rb_cg7] maddons.wizarding_table_page matches 2..4 run playsound ui.button.click master @a ~ ~ ~ .2
execute if score @s[tag=maddons.wt_rb_cg7] maddons.wizarding_table_page matches 2..4 run scoreboard players remove @s maddons.wizarding_table_page 1