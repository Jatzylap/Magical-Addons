# item:wand/use
# called by advancement: item:use/wand

## Offhand wand
execute unless data entity @s {SelectedItem:{components:{"minecraft:custom_data":{magical_addons:{wand:1}}}}} if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{magical_addons:{wand:1}}}}]} run function magical_addons:item/wand/offhand with entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".magical_addons

## Mainhand wand
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{magical_addons:{wand:1}}}}} run function magical_addons:item/wand/mainhand with entity @s SelectedItem.components."minecraft:custom_data".magical_addons

## Mana meter
function magical_addons:player/event/mana_meter

## Reset
scoreboard players reset @s maddons.wfoas
advancement revoke @s from magical_addons:---/item/use