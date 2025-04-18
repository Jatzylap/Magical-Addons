# block:custom/sparkstone_cluster/place
# called by: block:custom/sparkstone_cluster/scan

execute if entity @s[advancements={magical_addons:---/block/place/sparkstone_cluster=true}] run playsound block.amethyst_cluster.place block @a ~ ~ ~ 1 1.1

data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties set from storage maddons.player:temp data.target_block.properties
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b

execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"DOWN"}}}}} summon item_display run data merge entity @s {transformation:{left_rotation:[0f,0f,1f,0f]},item_display:"head",item:{id:"chiseled_bookshelf",components:{"minecraft:item_model":"magical_addons:sparkstone_cluster","minecraft:custom_model_data":{strings:["up_down"]},"minecraft:custom_data":{magical_addons:{id:"sparkstone_cluster",block:"spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:sparkstone_cluster}}}}",face:"down",cmd:"function magical_addons:block/custom/sparkstone_cluster/break"}}}},view_range:300.,Tags:[maddons.block,maddons.persistent,maddons.sparkstone_cluster,maddons.block.face_down]}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"UP"}}}}} run summon item_display ~ ~ ~ {Rotation:[0f,0f],item_display:"head",item:{id:"chiseled_bookshelf",components:{"minecraft:item_model":"magical_addons:sparkstone_cluster","minecraft:custom_model_data":{strings:["up_down"]},"minecraft:custom_data":{magical_addons:{id:"sparkstone_cluster",block:"spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:sparkstone_cluster}}}}",face:"up",cmd:"function magical_addons:block/custom/sparkstone_cluster/break"}}}},view_range:300.,Tags:[maddons.block,maddons.persistent,maddons.sparkstone_cluster,maddons.block.face_up]}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"NORTH"}}}}} run summon item_display ~ ~ ~ {Rotation:[180f,0f],item_display:"head",item:{id:"chiseled_bookshelf",components:{"minecraft:item_model":"magical_addons:sparkstone_cluster","minecraft:custom_model_data":{strings:["north_south"]},"minecraft:custom_data":{magical_addons:{id:"sparkstone_cluster",block:"spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:sparkstone_cluster}}}}",face:"north",cmd:"function magical_addons:block/custom/sparkstone_cluster/break"}}}},view_range:300.,Tags:[maddons.block,maddons.persistent,maddons.sparkstone_cluster,maddons.block.face_north]}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"SOUTH"}}}}} run summon item_display ~ ~ ~ {Rotation:[0f,0f],item_display:"head",item:{id:"chiseled_bookshelf",components:{"minecraft:item_model":"magical_addons:sparkstone_cluster","minecraft:custom_model_data":{strings:["north_south"]},"minecraft:custom_data":{magical_addons:{id:"sparkstone_cluster",block:"spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:sparkstone_cluster}}}}",face:"south",cmd:"function magical_addons:block/custom/sparkstone_cluster/break"}}}},view_range:300.,Tags:[maddons.block,maddons.persistent,maddons.sparkstone_cluster,maddons.block.face_south]}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"WEST"}}}}} run summon item_display ~ ~ ~ {Rotation:[270f,0f],item_display:"head",item:{id:"chiseled_bookshelf",components:{"minecraft:item_model":"magical_addons:sparkstone_cluster","minecraft:custom_model_data":{strings:["west_east"]},"minecraft:custom_data":{magical_addons:{id:"sparkstone_cluster",block:"spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:sparkstone_cluster}}}}",face:"west",cmd:"function magical_addons:block/custom/sparkstone_cluster/break"}}}},view_range:300.,Tags:[maddons.block,maddons.persistent,maddons.sparkstone_cluster,maddons.block.face_west]}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"EAST"}}}}} run summon item_display ~ ~ ~ {Rotation:[90f,0f],item_display:"head",item:{id:"chiseled_bookshelf",components:{"minecraft:item_model":"magical_addons:sparkstone_cluster","minecraft:custom_model_data":{strings:["west_east"]},"minecraft:custom_data":{magical_addons:{id:"sparkstone_cluster",block:"spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:sparkstone_cluster}}}}",face:"east",cmd:"function magical_addons:block/custom/sparkstone_cluster/break"}}}},view_range:300.,Tags:[maddons.block,maddons.persistent,maddons.sparkstone_cluster,maddons.block.face_east]}

## Light
setblock ~1 ~ ~ light[level=4] keep
setblock ~-1 ~ ~ light[level=4] keep
setblock ~ ~1 ~ light[level=4] keep
setblock ~ ~-1 ~ light[level=4] keep
setblock ~ ~ ~1 light[level=4] keep
setblock ~ ~ ~-1 light[level=4] keep
fill ~ ~ ~ ~1 ~ ~ light[level=4,waterlogged=true] replace water
fill ~ ~ ~ ~-1 ~ ~ light[level=4,waterlogged=true] replace water
fill ~ ~ ~ ~ ~1 ~ light[level=4,waterlogged=true] replace water
fill ~ ~ ~ ~ ~-1 ~ light[level=4,waterlogged=true] replace water
fill ~ ~ ~ ~ ~ ~1 light[level=4,waterlogged=true] replace water
fill ~ ~ ~ ~ ~ ~-1 light[level=4,waterlogged=true] replace water