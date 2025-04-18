# block:update_end
# called by: block:update

execute if block ~ ~ ~ #magical_addons:gold_ores if predicate magical_addons:block/visible run return run function magical_addons:block/group/vanilla/gold_ores/place
execute if block ~ ~ ~ #minecraft:redstone_ores if predicate magical_addons:block/visible run return run function magical_addons:block/group/vanilla/redstone_ores/place
execute if block ~ ~ ~ #minecraft:lapis_ores if predicate magical_addons:block/visible run return run function magical_addons:block/group/vanilla/lapis_ores/place
execute if block ~ ~ ~ #minecraft:emerald_ores if predicate magical_addons:block/visible run return run function magical_addons:block/group/vanilla/emerald_ores/place
execute if block ~ ~ ~ #minecraft:diamond_ores if predicate magical_addons:block/visible run return run function magical_addons:block/group/vanilla/diamond_ores/place
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"ruby_ore"}}}} if predicate magical_addons:block/visible run return run function magical_addons:block/custom/ruby_ore/place
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"wizarding_table"}}},lock:{}} if items block ~ ~ ~ container.* *[minecraft:custom_data~{magical_addons:{id:"sparkstone_orb"}}] as @n[type=item_display,tag=maddons.wizarding_table,tag=off,distance=...5] at @s run return run function magical_addons:block/custom/wizarding_table/engage

execute unless predicate magical_addons:block/visible run return run kill @n[type=item_display,tag=maddons.light,distance=...5]

## Custom block loot
execute as @n[distance=...5,type=item_display,tag=maddons.block] at @s run function magical_addons:block/break with entity @s item.components."minecraft:custom_data".magical_addons