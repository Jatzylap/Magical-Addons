# block:custom/small_sparkstone_bud/place
# called by: block:custom/small_sparkstone_bud/scan

## Sound
playsound block.small_amethyst_bud.place block @a ~ ~ ~ 1 0.96

## Block
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b
execute if data storage magical_addons:temp {data:{block:{hit_normal:{x:0,y:-1,z:0}}}} summon item_display run data merge entity @s {Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,1f,0f]},item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:small_sparkstone_bud","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"small_sparkstone_bud",face:"down",cmd:"execute if predicate magical_addons:block/small_sparkstone_bud/broken_face_down run function magical_addons:block/custom/small_sparkstone_bud/break"}}}},view_range:64,Tags:[maddons.block,maddons.small_sparkstone_bud,maddons.block.face_down]}
execute if data storage magical_addons:temp {data:{block:{hit_normal:{x:0,y:1,z:0}}}} run summon item_display ~ ~ ~ {Rotation:[0f,0f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:small_sparkstone_bud","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"small_sparkstone_bud",face:"up",cmd:"execute if predicate magical_addons:block/small_sparkstone_bud/broken_face_up run function magical_addons:block/custom/small_sparkstone_bud/break"}}}},view_range:64,Tags:[maddons.block,maddons.small_sparkstone_bud,maddons.block.face_up]}
execute if data storage magical_addons:temp {data:{block:{hit_normal:{x:0,y:0,z:-1}}}} run summon item_display ~ ~ ~ {Rotation:[180f,90f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:small_sparkstone_bud","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"small_sparkstone_bud",face:"north",cmd:"execute if predicate magical_addons:block/small_sparkstone_bud/broken_face_north run function magical_addons:block/custom/small_sparkstone_bud/break"}}}},view_range:64,Tags:[maddons.block,maddons.small_sparkstone_bud,maddons.block.face_north]}
execute if data storage magical_addons:temp {data:{block:{hit_normal:{x:0,y:0,z:1}}}} run summon item_display ~ ~ ~ {Rotation:[0f,90f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:small_sparkstone_bud","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"small_sparkstone_bud",face:"south",cmd:"execute if predicate magical_addons:block/small_sparkstone_bud/broken_face_south run function magical_addons:block/custom/small_sparkstone_bud/break"}}}},view_range:64,Tags:[maddons.block,maddons.small_sparkstone_bud,maddons.block.face_south]}
execute if data storage magical_addons:temp {data:{block:{hit_normal:{x:-1,y:0,z:0}}}} run summon item_display ~ ~ ~ {Rotation:[90f,90f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:small_sparkstone_bud","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"small_sparkstone_bud",face:"west",cmd:"execute if predicate magical_addons:block/small_sparkstone_bud/broken_face_west run function magical_addons:block/custom/small_sparkstone_bud/break"}}}},view_range:64,Tags:[maddons.block,maddons.small_sparkstone_bud,maddons.block.face_west]}
execute if data storage magical_addons:temp {data:{block:{hit_normal:{x:1,y:0,z:0}}}} run summon item_display ~ ~ ~ {Rotation:[270f,90f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:small_sparkstone_bud","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"small_sparkstone_bud",face:"east",cmd:"execute if predicate magical_addons:block/small_sparkstone_bud/broken_face_east run function magical_addons:block/custom/small_sparkstone_bud/break"}}}},view_range:64,Tags:[maddons.block,maddons.small_sparkstone_bud,maddons.block.face_east]}

## Light
setblock ~1 ~ ~ light[level=1] keep
setblock ~-1 ~ ~ light[level=1] keep
setblock ~ ~1 ~ light[level=1] keep
setblock ~ ~-1 ~ light[level=1] keep
setblock ~ ~ ~1 light[level=1] keep
setblock ~ ~ ~-1 light[level=1] keep
fill ~ ~ ~ ~1 ~ ~ light[level=1,waterlogged=true] replace water
fill ~ ~ ~ ~-1 ~ ~ light[level=1,waterlogged=true] replace water
fill ~ ~ ~ ~ ~1 ~ light[level=1,waterlogged=true] replace water
fill ~ ~ ~ ~ ~-1 ~ light[level=1,waterlogged=true] replace water
fill ~ ~ ~ ~ ~ ~1 light[level=1,waterlogged=true] replace water
fill ~ ~ ~ ~ ~ ~-1 light[level=1,waterlogged=true] replace water