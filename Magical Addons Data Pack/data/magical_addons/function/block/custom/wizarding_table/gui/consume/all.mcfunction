# block:custom/wizarding_table/gui/consume/all
# called by: block:custom/wizarding_table/gui/consume/target

## Consume
execute unless items block ~ ~ ~ container.2 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.2 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.3 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.3 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.4 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.4 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.11 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.11 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.12 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.12 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.13 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.13 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.20 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.20 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.21 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.21 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.22 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.22 magical_addons:block/wizarding_table/recipe_item_consume

## Semi consume
execute if items block ~ ~ ~ container.2 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.2 magical_addons:block/wizarding_table/recipe_item_semi_consume
execute if items block ~ ~ ~ container.3 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.3 magical_addons:block/wizarding_table/recipe_item_semi_consume
execute if items block ~ ~ ~ container.4 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.4 magical_addons:block/wizarding_table/recipe_item_semi_consume
execute if items block ~ ~ ~ container.11 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.11 magical_addons:block/wizarding_table/recipe_item_semi_consume
execute if items block ~ ~ ~ container.12 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.12 magical_addons:block/wizarding_table/recipe_item_semi_consume
execute if items block ~ ~ ~ container.13 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.13 magical_addons:block/wizarding_table/recipe_item_semi_consume
execute if items block ~ ~ ~ container.20 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.20 magical_addons:block/wizarding_table/recipe_item_semi_consume
execute if items block ~ ~ ~ container.21 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.21 magical_addons:block/wizarding_table/recipe_item_semi_consume
execute if items block ~ ~ ~ container.22 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.22 magical_addons:block/wizarding_table/recipe_item_semi_consume

## Is recipe activated
execute store result score @s maddons.temp run function magical_addons:block/custom/wizarding_table/recipes

## Modify item
data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_data".magical_addons merge value {gui:0,result:1}

## Set damage
scoreboard players add @s maddons.damage 1
scoreboard players remove @s maddons.idamage 1

## Drop result item (in recurse mode)
execute if score @s maddons.temp matches 1 unless score @s maddons.max_damage <= @s maddons.damage run function magical_addons:block/custom/wizarding_table/return {slot:16}

## Recurse
execute if score @s maddons.max_damage <= @s maddons.damage run return run function magical_addons:block/custom/wizarding_table/disengage
execute if score @s maddons.temp matches 1 run function magical_addons:block/custom/wizarding_table/gui/consume/all