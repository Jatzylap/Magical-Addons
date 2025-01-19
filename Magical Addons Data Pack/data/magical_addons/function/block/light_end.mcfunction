# block:light_end
# called by: block:light

execute if block ~ ~ ~ #magical_addons:gold_ores if predicate magical_addons:block/visible run return run function magical_addons:block/group/vanilla/gold_ores/place {id:"air"}
execute if block ~ ~ ~ #minecraft:redstone_ores if predicate magical_addons:block/visible run return run function magical_addons:block/group/vanilla/redstone_ores/place {id:"air"}
execute if block ~ ~ ~ #minecraft:lapis_ores if predicate magical_addons:block/visible run return run function magical_addons:block/group/vanilla/lapis_ores/place {id:"air"}
execute if block ~ ~ ~ #minecraft:emerald_ores if predicate magical_addons:block/visible run return run function magical_addons:block/group/vanilla/emerald_ores/place {id:"air"}
execute if block ~ ~ ~ #minecraft:diamond_ores if predicate magical_addons:block/visible run return run function magical_addons:block/group/vanilla/diamond_ores/place {id:"air"}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"ruby_ore"}}}} if predicate magical_addons:block/visible run return run function magical_addons:block/custom/ruby_ore/place
#execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"chiseled_bookshelf"}}}} as @n[type=item_display,tag=maddons.chiseled_bookshelf,distance=...5] at @s run return run function magical_addons:block/light_block

execute unless predicate magical_addons:block/visible run return run kill @n[type=item_display,tag=maddons.light,distance=...5]