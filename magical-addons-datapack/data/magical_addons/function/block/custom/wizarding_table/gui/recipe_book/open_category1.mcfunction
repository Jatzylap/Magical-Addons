# block:custom/wizarding_table/gui/recipe_book/open_category1
# called by: block:custom/wizarding_table/gui/recipe_book

## Sound
execute if entity @s[tag=!maddons.block.rb.c2_,\
                     tag=!maddons.block.rb.c3_,\
                     tag=!maddons.block.rb.c4_,\
                     tag=!maddons.block.rb.c5_,\
                     tag=!maddons.block.rb.c6_] run playsound ui.button.click ui @p ~ ~ ~ .3

## Exit (debug)
execute if entity @s[tag=maddons.block.rb.c2_] run function magical_addons:block/custom/wizarding_table/gui/recipe_book/close_category2
execute if entity @s[tag=maddons.block.rb.c3_] run function magical_addons:block/custom/wizarding_table/gui/recipe_book/close_category3
execute if entity @s[tag=maddons.block.rb.c4_] run function magical_addons:block/custom/wizarding_table/gui/recipe_book/close_category4
execute if entity @s[tag=maddons.block.rb.c5_] run function magical_addons:block/custom/wizarding_table/gui/recipe_book/close_category5
execute if entity @s[tag=maddons.block.rb.c6_] run function magical_addons:block/custom/wizarding_table/gui/recipe_book/close_category6

tag @s add maddons.block.rb.c1

## Set category page
scoreboard players set @s maddons.wizarding_table_page 0