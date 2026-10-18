# block:custom/wizarding_table/gui
# called by: block:custom/wizarding_table/tick

## Recipe Book GUI - Root
execute if entity @s[tag=!maddons.block.rb] unless data block ~ ~ ~ {Items:[{Slot:9b}]} run return run function magical_addons:block/custom/wizarding_table/gui/recipe_book
execute if entity @s[tag=maddons.block.rb] unless data block ~ ~ ~ {Items:[{Slot:9b}]} run return run function magical_addons:block/custom/wizarding_table/gui/reset

## Recipe Book GUI - Categories
execute if entity @s[tag=maddons.block.rb,tag=maddons.block.rb.c1] run return run function magical_addons:block/custom/wizarding_table/gui/recipe_book_category1
execute if entity @s[tag=maddons.block.rb,tag=maddons.block.rb.c2] run return run function magical_addons:block/custom/wizarding_table/gui/recipe_book_category2
execute if entity @s[tag=maddons.block.rb,tag=maddons.block.rb.c3] run return run function magical_addons:block/custom/wizarding_table/gui/recipe_book_category3
execute if entity @s[tag=maddons.block.rb,tag=maddons.block.rb.c4] run return run function magical_addons:block/custom/wizarding_table/gui/recipe_book_category4
execute if entity @s[tag=maddons.block.rb,tag=maddons.block.rb.c5] run return run function magical_addons:block/custom/wizarding_table/gui/recipe_book_category5
execute if entity @s[tag=maddons.block.rb,tag=maddons.block.rb.c6] run return run function magical_addons:block/custom/wizarding_table/gui/recipe_book_category6
execute if entity @s[tag=maddons.block.rb] if data block ~ ~ ~ {Items:[{Slot:9b}]} run return run function magical_addons:block/custom/wizarding_table/gui/recipe_book

## Main GUI
function magical_addons:block/custom/wizarding_table/gui/main