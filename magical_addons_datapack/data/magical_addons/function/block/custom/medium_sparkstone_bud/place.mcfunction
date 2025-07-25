# block:custom/medium_sparkstone_bud/place
# called by: block:custom/medium_sparkstone_bud/scan

execute if entity @s[advancements={magical_addons:---/block/place/medium_sparkstone_bud=true}] run playsound block.medium_amethyst_bud.place block @a ~ ~ ~ 1 0.88

data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties set from storage magical_addons:temp data.block.target.properties
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b

execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"DOWN"}}}}} summon item_display run data merge entity @s {Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,1f,0f]},item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:medium_sparkstone_bud","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"medium_sparkstone_bud",face:"down",cmd:"execute if predicate magical_addons:block/medium_sparkstone_bud/broken_face_down run function magical_addons:block/custom/medium_sparkstone_bud/break"}}}},view_range:64,Tags:[maddons.block,maddons.medium_sparkstone_bud,maddons.block.face_down]}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"UP"}}}}} run summon item_display ~ ~ ~ {Rotation:[0f,0f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:medium_sparkstone_bud","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"medium_sparkstone_bud",face:"up",cmd:"execute if predicate magical_addons:block/medium_sparkstone_bud/broken_face_up run function magical_addons:block/custom/medium_sparkstone_bud/break"}}}},view_range:64,Tags:[maddons.block,maddons.medium_sparkstone_bud,maddons.block.face_up]}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"NORTH"}}}}} run summon item_display ~ ~ ~ {Rotation:[180f,90f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:medium_sparkstone_bud","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"medium_sparkstone_bud",face:"north",cmd:"execute if predicate magical_addons:block/medium_sparkstone_bud/broken_face_north run function magical_addons:block/custom/medium_sparkstone_bud/break"}}}},view_range:64,Tags:[maddons.block,maddons.medium_sparkstone_bud,maddons.block.face_north]}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"SOUTH"}}}}} run summon item_display ~ ~ ~ {Rotation:[0f,90f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:medium_sparkstone_bud","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"medium_sparkstone_bud",face:"south",cmd:"execute if predicate magical_addons:block/medium_sparkstone_bud/broken_face_south run function magical_addons:block/custom/medium_sparkstone_bud/break"}}}},view_range:64,Tags:[maddons.block,maddons.medium_sparkstone_bud,maddons.block.face_south]}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"WEST"}}}}} run summon item_display ~ ~ ~ {Rotation:[90f,90f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:medium_sparkstone_bud","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"medium_sparkstone_bud",face:"west",cmd:"execute if predicate magical_addons:block/medium_sparkstone_bud/broken_face_west run function magical_addons:block/custom/medium_sparkstone_bud/break"}}}},view_range:64,Tags:[maddons.block,maddons.medium_sparkstone_bud,maddons.block.face_west]}
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{properties:{face:"EAST"}}}}} run summon item_display ~ ~ ~ {Rotation:[270f,90f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:medium_sparkstone_bud","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"medium_sparkstone_bud",face:"east",cmd:"execute if predicate magical_addons:block/medium_sparkstone_bud/broken_face_east run function magical_addons:block/custom/medium_sparkstone_bud/break"}}}},view_range:64,Tags:[maddons.block,maddons.medium_sparkstone_bud,maddons.block.face_east]}

## Light
setblock ~1 ~ ~ light[level=2] keep
setblock ~-1 ~ ~ light[level=2] keep
setblock ~ ~1 ~ light[level=2] keep
setblock ~ ~-1 ~ light[level=2] keep
setblock ~ ~ ~1 light[level=2] keep
setblock ~ ~ ~-1 light[level=2] keep
fill ~ ~ ~ ~1 ~ ~ light[level=2,waterlogged=true] replace water
fill ~ ~ ~ ~-1 ~ ~ light[level=2,waterlogged=true] replace water
fill ~ ~ ~ ~ ~1 ~ light[level=2,waterlogged=true] replace water
fill ~ ~ ~ ~ ~-1 ~ light[level=2,waterlogged=true] replace water
fill ~ ~ ~ ~ ~ ~1 light[level=2,waterlogged=true] replace water
fill ~ ~ ~ ~ ~ ~-1 light[level=2,waterlogged=true] replace water