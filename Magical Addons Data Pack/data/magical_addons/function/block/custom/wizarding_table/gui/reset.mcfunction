# block:custom/wizarding_table/gui/reset
# called by: block:custom/wizarding_table/engage

## Sound
execute if entity @s[tag=maddons.block.rb] run playsound ui.button.click ui @p ~ ~ ~ 0.3

item replace block ~ ~ ~ container.0 with structure_void[max_stack_size=1,max_damage=100,item_model="magical_addons:gui/wizarding_table",custom_model_data={strings:["wt_no_rb"]},custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.1 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.2 with air
item replace block ~ ~ ~ container.3 with air
item replace block ~ ~ ~ container.4 with air
item replace block ~ ~ ~ container.5 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.6 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.7 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.8 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.9 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.10 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.11 with air
item replace block ~ ~ ~ container.12 with air
item replace block ~ ~ ~ container.13 with air
item replace block ~ ~ ~ container.14 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.15 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.16 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1,result:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.17 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.18 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.19 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.20 with air
item replace block ~ ~ ~ container.21 with air
item replace block ~ ~ ~ container.22 with air
item replace block ~ ~ ~ container.23 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.24 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.25 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.26 with structure_void[max_stack_size=1,max_damage=100,item_model="air",custom_data={magical_addons:{gui:1}},tooltip_display={hide_tooltip:true}]

tag @s remove maddons.block.rb
tag @s remove maddons.block.rb.p1
tag @s remove maddons.block.rb.p2
tag @s remove maddons.block.rb.p3
tag @s remove maddons.block.rb.p4
tag @s remove maddons.block.rb.p5
tag @s remove maddons.block.rb.p6
tag @s remove maddons.block.rb.p1_
tag @s remove maddons.block.rb.p2_
tag @s remove maddons.block.rb.p3_
tag @s remove maddons.block.rb.p4_
tag @s remove maddons.block.rb.p5_
tag @s remove maddons.block.rb.p6_