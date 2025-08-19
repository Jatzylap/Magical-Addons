# item:diamond_wand/use
# called by advancement: item:use/diamond_wand

## Offhand use
execute unless score @s maddons.cooldown matches 1.. unless data entity @s {SelectedItem:{components:{"minecraft:custom_data":{magical_addons:{id:"diamond_wand"}}}}} if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{magical_addons:{id:"diamond_wand"}}}}}} run function magical_addons:item/diamond_wand/use_offhand with entity @s equipment.offhand.components."minecraft:custom_data".magical_addons

## Mainhand use
execute unless score @s maddons.cooldown matches 1.. if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{magical_addons:{id:"diamond_wand"}}}}} run function magical_addons:item/diamond_wand/use_mainhand with entity @s SelectedItem.components."minecraft:custom_data".magical_addons

## Mana meter
function magical_addons:player/event/mana_meter

## Cooldown
execute unless score @s maddons.cooldown matches 1.. run scoreboard players add @s maddons.cooldown 10

## Reset
advancement revoke @s from magical_addons:---/item/use