# dungeon:ancient_portal/destroy/from_x
# called by: dungeon:ancient_portal/check

## Top
execute if entity @s[tag=t] unless block ~ ~1 ~ reinforced_deepslate run return run function magical_addons:dungeon/ancient_portal/destroy with entity @s item.components."minecraft:custom_data".portal

## Left
execute if entity @s[tag=l] unless block ~-1 ~ ~ reinforced_deepslate run return run function magical_addons:dungeon/ancient_portal/destroy with entity @s item.components."minecraft:custom_data".portal

## Right
execute if entity @s[tag=r] unless block ~1 ~ ~ reinforced_deepslate run return run function magical_addons:dungeon/ancient_portal/destroy with entity @s item.components."minecraft:custom_data".portal

## Base
execute if entity @s[tag=b] unless block ~ ~-1 ~ reinforced_deepslate run return run function magical_addons:dungeon/ancient_portal/destroy with entity @s item.components."minecraft:custom_data".portal