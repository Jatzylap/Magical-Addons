# block:custom/wizarding_table/gui/recipe_book/close_category4
# called by: block:custom/wizarding_table/gui/recipe_book_category4

## Sound
playsound ui.button.click ui @p ~ ~ ~ .3

tag @s remove maddons.block.rb.c4
tag @s remove maddons.block.rb.c4_

## Replace
item replace block ~ ~ ~ container.12 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
