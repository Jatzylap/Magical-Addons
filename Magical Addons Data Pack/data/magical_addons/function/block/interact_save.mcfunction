# block:interact_save
# called by: block:interact_start

## Aether portal
$execute positioned ^ ^ ^$(Distance) if block ~ ~ ~ fire if block ~ ~-1 ~ chiseled_bookshelf{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} align xyz positioned ~.5 ~.5 ~.5 summon marker run function magical_addons:dungeon/aether_portal/identify
$execute positioned ^ ^ ^$(Distance) positioned ^ ^ ^.01 if block ~ ~ ~ fire if block ~ ~-1 ~ chiseled_bookshelf{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} align xyz positioned ~.5 ~.5 ~.5 summon marker run function magical_addons:dungeon/aether_portal/identify