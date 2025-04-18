# block:custom/wizarding_table/gui/craft
# called by: block:custom/wizarding_table/gui

scoreboard players reset @s maddons.craft

## Wands
execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/wand run loot replace block ~ ~ ~ container.16 loot magical_addons:wand
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/sparkstone_pickaxe run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone_pickaxe
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/sonic_staff run loot replace block ~ ~ ~ container.16 loot magical_addons:sonic_staff

## Blocks
execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/sparkstone run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/moonstone run loot replace block ~ ~ ~ container.16 loot magical_addons:moonstone
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/cursed_head run loot replace block ~ ~ ~ container.16 loot magical_addons:cursed_head

execute if score @s maddons.craft matches 1 run data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_data".magical_addons merge value {gui:0,result:1}