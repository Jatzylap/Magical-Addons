# dungeon:ancient_portal/destroy/from_z
# called by: dungeon:ancient_portal/destroy/as_item_display

## Top
execute if entity @s[tag=t] unless block ~ ~1 ~ chiseled_bookshelf{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} run return run function magical_addons:dungeon/ancient_portal/destroy with entity @s item.components."minecraft:custom_data".portal

## Left
execute if entity @s[tag=l] unless block ~ ~ ~-1 chiseled_bookshelf{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} run return run function magical_addons:dungeon/ancient_portal/destroy with entity @s item.components."minecraft:custom_data".portal

## Right
execute if entity @s[tag=r] unless block ~ ~ ~1 chiseled_bookshelf{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} run return run function magical_addons:dungeon/ancient_portal/destroy with entity @s item.components."minecraft:custom_data".portal

## Base
execute if entity @s[tag=b] unless block ~ ~-1 ~ chiseled_bookshelf{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} run return run function magical_addons:dungeon/ancient_portal/destroy with entity @s item.components."minecraft:custom_data".portal