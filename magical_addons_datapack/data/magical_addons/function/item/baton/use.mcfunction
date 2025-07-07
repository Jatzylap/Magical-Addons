# item:baton/use
# called by advancement: item:use/baton

## Offhand use
execute unless score @s maddons.cooldown matches 1.. unless data entity @s {SelectedItem:{components:{"minecraft:custom_data":{magical_addons:{id:"baton"}}}}} if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{magical_addons:{id:"baton"}}}}]} run function magical_addons:item/baton/use_offhand with entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".magical_addons

## Mainhand use
execute unless score @s maddons.cooldown matches 1.. if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{magical_addons:{id:"baton"}}}}} run function magical_addons:item/baton/use_mainhand with entity @s SelectedItem.components."minecraft:custom_data".magical_addons

## Mana meter
function magical_addons:player/event/mana_meter

## Cooldown
execute unless score @s maddons.cooldown matches 1.. run scoreboard players add @s maddons.cooldown 10

## Reset
advancement revoke @s from magical_addons:---/item/use