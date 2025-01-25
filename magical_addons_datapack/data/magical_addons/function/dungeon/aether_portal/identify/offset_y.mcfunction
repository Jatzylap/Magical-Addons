# dungeon:aether_portal/identify/offset_y
# called by: dungeon:aether_portal/identify

execute store result entity @s data.offset_y int 1 unless block ~ ~-1 ~ chiseled_bookshelf{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} run scoreboard players remove @s maddons.temp 1
execute unless score @s maddons.temp matches ..-23 positioned ~ ~-1 ~ unless block ~ ~ ~ chiseled_bookshelf{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} run function magical_addons:dungeon/aether_portal/identify/offset_y