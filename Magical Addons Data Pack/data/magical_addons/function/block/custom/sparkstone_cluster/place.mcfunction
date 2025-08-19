# block:custom/sparkstone_cluster/place
# called by: block:custom/sparkstone_cluster/scan

execute if entity @s[advancements={magical_addons:---/block/place/sparkstone_cluster=true}] run playsound block.amethyst_cluster.place block @a ~ ~ ~ 1 0.8

data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties set from storage magical_addons:temp data.block.target.properties
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b

execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"DOWN"}}}}} summon item_display run data merge entity @s {Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,1f,0f]},item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:sparkstone_cluster","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"sparkstone_cluster",face:"down",cmd:"execute if predicate magical_addons:block/sparkstone_cluster/broken_face_down run function magical_addons:block/custom/sparkstone_cluster/break"}}}},view_range:64,Tags:[maddons.block,maddons.sparkstone_cluster,maddons.block.face_down]}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"UP"}}}}} run summon item_display ~ ~ ~ {Rotation:[0f,0f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:sparkstone_cluster","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"sparkstone_cluster",face:"up",cmd:"execute if predicate magical_addons:block/sparkstone_cluster/broken_face_up run function magical_addons:block/custom/sparkstone_cluster/break"}}}},view_range:64,Tags:[maddons.block,maddons.sparkstone_cluster,maddons.block.face_up]}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"NORTH"}}}}} run summon item_display ~ ~ ~ {Rotation:[180f,90f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:sparkstone_cluster","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"sparkstone_cluster",face:"north",cmd:"execute if predicate magical_addons:block/sparkstone_cluster/broken_face_north run function magical_addons:block/custom/sparkstone_cluster/break"}}}},view_range:64,Tags:[maddons.block,maddons.sparkstone_cluster,maddons.block.face_north]}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"SOUTH"}}}}} run summon item_display ~ ~ ~ {Rotation:[0f,90f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:sparkstone_cluster","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"sparkstone_cluster",face:"south",cmd:"execute if predicate magical_addons:block/sparkstone_cluster/broken_face_south run function magical_addons:block/custom/sparkstone_cluster/break"}}}},view_range:64,Tags:[maddons.block,maddons.sparkstone_cluster,maddons.block.face_south]}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"WEST"}}}}} run summon item_display ~ ~ ~ {Rotation:[90f,90f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:sparkstone_cluster","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"sparkstone_cluster",face:"west",cmd:"execute if predicate magical_addons:block/sparkstone_cluster/broken_face_west run function magical_addons:block/custom/sparkstone_cluster/break"}}}},view_range:64,Tags:[maddons.block,maddons.sparkstone_cluster,maddons.block.face_west]}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"EAST"}}}}} run summon item_display ~ ~ ~ {Rotation:[270f,90f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:sparkstone_cluster","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"sparkstone_cluster",face:"east",cmd:"execute if predicate magical_addons:block/sparkstone_cluster/broken_face_east run function magical_addons:block/custom/sparkstone_cluster/break"}}}},view_range:64,Tags:[maddons.block,maddons.sparkstone_cluster,maddons.block.face_east]}

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