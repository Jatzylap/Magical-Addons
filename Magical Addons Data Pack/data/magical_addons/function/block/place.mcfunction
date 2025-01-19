# block:place
# called by: iris:raycast/macro_functions/callback

## Maybe remove this function later and run specific block callbacks from advancements
## (block advancement => block raycast => block scan: replaces 'place_end' macros)

execute if entity @s[advancements={magical_addons:---/block/place/chiseled_bookshelf=true}] run return run function magical_addons:block/place_end {block:"chiseled_bookshelf{components:{\"minecraft:custom_data\":{magical_addons:{generated:0b,id:\"chiseled_bookshelf\"}}}}",args:{},path:"vanilla/chiseled_bookshelf/place"}
execute if entity @s[advancements={magical_addons:---/block/place/redstone_ores=true}] run return run function magical_addons:block/place_end {block:"#redstone_ores",args:{id:air},path:"group/vanilla/redstone_ores/place"}
execute if entity @s[advancements={magical_addons:---/block/place/lapis_ores=true}] run return run function magical_addons:block/place_end {block:"#lapis_ores",args:{id:air},path:"group/vanilla/lapis_ores/place"}
execute if entity @s[advancements={magical_addons:---/block/place/gold_ores=true}] run return run function magical_addons:block/place_end {block:"#gold_ores",args:{id:air},path:"group/vanilla/gold_ores/place"}
execute if entity @s[advancements={magical_addons:---/block/place/diamond_ores=true}] run return run function magical_addons:block/place_end {block:"#diamond_ores",args:{id:air},path:"group/vanilla/diamond_ores/place"}
execute if entity @s[advancements={magical_addons:---/block/place/emerald_ores=true}] run return run function magical_addons:block/place_end {block:"#emerald_ores",args:{id:air},path:"group/vanilla/emerald_ores/place"}

execute if entity @s[advancements={magical_addons:---/block/place/aether_dirt=true}] run return run function magical_addons:block/place_end {block:"chiseled_bookshelf{components:{\"minecraft:custom_data\":{magical_addons:{generated:0b,id:\"aether_dirt\"}}}}",args:{},path:"custom/aether_dirt/place"}
execute if entity @s[advancements={magical_addons:---/block/place/aether_grass_block=true}] run return run function magical_addons:block/place_end {block:"chiseled_bookshelf{components:{\"minecraft:custom_data\":{magical_addons:{generated:0b,id:\"aether_grass_block\"}}}}",args:{},path:"custom/aether_grass_block/place"}
execute if entity @s[advancements={magical_addons:---/block/place/sparkstone=true}] run return run function magical_addons:block/place_end {block:"chiseled_bookshelf{components:{\"minecraft:custom_data\":{magical_addons:{generated:0b,id:\"sparkstone\"}}}}",args:{},path:"custom/sparkstone/place"}
execute if entity @s[advancements={magical_addons:---/block/place/echostone=true}] run return run function magical_addons:block/place_end {block:"chiseled_bookshelf{components:{\"minecraft:custom_data\":{magical_addons:{generated:0b,id:\"echostone\"}}}}",args:{},path:"custom/echostone/place"}
execute if entity @s[advancements={magical_addons:---/block/place/wizarding_table=true}] run return run function magical_addons:block/place_end {block:"chiseled_bookshelf{components:{\"minecraft:custom_data\":{magical_addons:{generated:0b,id:\"wizarding_table\"}}}}",args:{},path:"custom/wizarding_table/place"}