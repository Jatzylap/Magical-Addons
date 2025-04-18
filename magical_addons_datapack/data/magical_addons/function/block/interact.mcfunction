# block:interact
# called by: iris:raycast/macro_functions/callback

## Custom shulker box (containers)
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"wizarding_table"}}}} as @n[type=item_display,tag=maddons.wizarding_table,distance=...5] at @s run return run function magical_addons:block/custom/wizarding_table/interact

## Custom spawner (translucent)
execute if block ~ ~ ~ spawner{components:{"minecraft:custom_data":{magical_addons:{}}}} unless block ~ ~ ~ spawner{components:{"minecraft:custom_data":{magical_addons:{id:"spawner"}}}} run data remove block ~ ~ ~ SpawnData.entity

## Custom chiseled bookshelf (solid or perforated)
execute if data block ~ ~ ~ {id:"minecraft:chiseled_bookshelf",components:{"minecraft:custom_data":{magical_addons:{}}}} unless data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"chiseled_bookshelf"}}}} store result score #maddons.block.chiseled_bookshelf.interact maddons.temp run function magical_addons:block/group/vanilla/chiseled_bookshelf/interact
execute if score #maddons.block.chiseled_bookshelf.interact maddons.temp matches 0 run function magical_addons:block/group/vanilla/chiseled_bookshelf/return_source
scoreboard players reset #maddons.block.chiseled_bookshelf.interact maddons.temp
execute if data block ~ ~ ~ {id:"minecraft:chiseled_bookshelf",components:{"minecraft:custom_data":{magical_addons:{}}}} unless data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"chiseled_bookshelf"}}}} run function magical_addons:block/set_state with block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties