# block:custom/sparkstone_cluster/tick
# called by: dimension:the_echo/worldgen/set_blocks

execute align xyz positioned ~.5 ~.5 ~.5 unless predicate magical_addons:block/visible run return run setblock ~ ~ ~ soul_soil

execute align xyz run setblock ~.5 ~.5 ~.5 spawner{components:{"minecraft:custom_data":{magical_addons:{properties:{face:"DOWN"},generated:1b,break_speed:8.0,sound_id:"block.amethyst_block.step",sound_pitch:1.1,id:sparkstone_cluster}}},MaxNearbyEntities:0s,RequiredPlayerRange:0s,SpawnCount:0s,MaxSpawnDelay:800s,id:"minecraft:mob_spawner",SpawnRange:4s,Delay:0s,MinSpawnDelay:200s,SpawnPotentials:[]}
execute align xyz run summon item_display ~.5 ~.5 ~.5 {Rotation:[0f,0f],item_display:"head",item:{id:"chiseled_bookshelf",components:{"minecraft:item_model":"magical_addons:sparkstone_cluster","minecraft:custom_model_data":{strings:["up_down"]},"minecraft:custom_data":{magical_addons:{id:"sparkstone_cluster",block:"spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:sparkstone_cluster}}}}",face:"up",cmd:"function magical_addons:block/custom/sparkstone_cluster/break"}}}},view_range:300.,Tags:[maddons.block,maddons.persistent,maddons.sparkstone_cluster,maddons.block.face_up]}

## Light
fill ~1 ~ ~ ~-1 ~ ~ light[level=4] replace #magical_addons:light_replaceable
fill ~ ~1 ~ ~ ~-1 ~ light[level=4] replace #magical_addons:light_replaceable
fill ~ ~ ~1 ~ ~ ~-1 light[level=4] replace #magical_addons:light_replaceable