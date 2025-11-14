# block:custom/wizarding_table/gui/recipe_book/close_category2
# called by: block:custom/wizarding_table/gui/recipe_book_category2

## Sound
playsound ui.button.click ui @p ~ ~ ~ .3

tag @s remove maddons.block.rb.c2
tag @s remove maddons.block.rb.c2_

## Replace
item replace block ~ ~ ~ container.3 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
