# block:custom/wizarding_table/gui/recipe_book/open_category3
# called by: block:custom/wizarding_table/gui/recipe_book

## Sound
playsound ui.button.click ui @p ~ ~ ~ .3

tag @s add maddons.block.rb.c3

## Set category page
scoreboard players set @s maddons.wizarding_table_page 0