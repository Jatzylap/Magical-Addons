# block:mine
# called by: iris:raycast/macro_functions/callback

## Mining scan
function magical_addons:block/mine_scan

## Set block state
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} unless block ~ ~ ~ chiseled_bookshelf{components:{"minecraft:custom_data":{magical_addons:{id:"chiseled_bookshelf"}}}} run function magical_addons:block/set_state with block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties

## Mining speed
execute if entity @s[gamemode=!creative,gamemode=!spectator] if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run function magical_addons:block/mine_speed with block ~ ~ ~ components."minecraft:custom_data".magical_addons