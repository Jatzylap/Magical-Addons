# block:custom/wizarding_table/gui/consume
# called by: block:custom/wizarding_table/recipes

execute unless items block ~ ~ ~ container.2 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.2 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.3 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.3 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.4 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.4 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.11 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.11 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.12 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.12 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.13 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.13 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.20 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.20 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.21 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.21 magical_addons:block/wizarding_table/recipe_item_consume
execute unless items block ~ ~ ~ container.22 #magical_addons:semi_consumable run item modify block ~ ~ ~ container.22 magical_addons:block/wizarding_table/recipe_item_consume

execute if items block ~ ~ ~ container.2 #magical_addons:buckets run item replace block ~ ~ ~ container.2 with bucket
execute if items block ~ ~ ~ container.3 #magical_addons:buckets run item replace block ~ ~ ~ container.3 with bucket
execute if items block ~ ~ ~ container.4 #magical_addons:buckets run item replace block ~ ~ ~ container.4 with bucket
execute if items block ~ ~ ~ container.11 #magical_addons:buckets run item replace block ~ ~ ~ container.11 with bucket
execute if items block ~ ~ ~ container.12 #magical_addons:buckets run item replace block ~ ~ ~ container.12 with bucket
execute if items block ~ ~ ~ container.13 #magical_addons:buckets run item replace block ~ ~ ~ container.13 with bucket
execute if items block ~ ~ ~ container.20 #magical_addons:buckets run item replace block ~ ~ ~ container.20 with bucket
execute if items block ~ ~ ~ container.21 #magical_addons:buckets run item replace block ~ ~ ~ container.21 with bucket
execute if items block ~ ~ ~ container.22 #magical_addons:buckets run item replace block ~ ~ ~ container.22 with bucket

execute if items block ~ ~ ~ container.2 #magical_addons:bottles run item replace block ~ ~ ~ container.2 with glass_bottle
execute if items block ~ ~ ~ container.3 #magical_addons:bottles run item replace block ~ ~ ~ container.3 with glass_bottle
execute if items block ~ ~ ~ container.4 #magical_addons:bottles run item replace block ~ ~ ~ container.4 with glass_bottle
execute if items block ~ ~ ~ container.11 #magical_addons:bottles run item replace block ~ ~ ~ container.11 with glass_bottle
execute if items block ~ ~ ~ container.12 #magical_addons:bottles run item replace block ~ ~ ~ container.12 with glass_bottle
execute if items block ~ ~ ~ container.13 #magical_addons:bottles run item replace block ~ ~ ~ container.13 with glass_bottle
execute if items block ~ ~ ~ container.20 #magical_addons:bottles run item replace block ~ ~ ~ container.20 with glass_bottle
execute if items block ~ ~ ~ container.21 #magical_addons:bottles run item replace block ~ ~ ~ container.21 with glass_bottle
execute if items block ~ ~ ~ container.22 #magical_addons:bottles run item replace block ~ ~ ~ container.22 with glass_bottle

scoreboard players reset @s maddons.craft
scoreboard players add @s maddons.damage 1