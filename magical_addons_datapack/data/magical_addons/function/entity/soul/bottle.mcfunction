# entity:soul/bottle
# called by advancement: entity:bottle_soul

execute if items entity @s weapon.mainhand glass_bottle run loot give @s loot magical_addons:soul_bottle
execute if items entity @s weapon.mainhand glass_bottle run item modify entity @s[gamemode=!creative] weapon.mainhand magical_addons:block/wizarding_table/recipe_item_consume

advancement revoke @s from magical_addons:---/entity/root