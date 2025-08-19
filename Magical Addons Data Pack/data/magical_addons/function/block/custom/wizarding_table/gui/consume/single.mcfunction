# block:custom/wizarding_table/gui/consume/single
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

## Modify item in all players cursors
execute as @a at @s if items entity @s player.cursor *[custom_data~{magical_addons:{gui:0,result:1}}] run item modify entity @s player.cursor magical_addons:player/pick_up_gui_result

## Set damage
scoreboard players add @s maddons.damage 1
scoreboard players remove @s maddons.idamage 1
execute if score @s maddons.max_damage <= @s maddons.damage run function magical_addons:block/custom/wizarding_table/disengage