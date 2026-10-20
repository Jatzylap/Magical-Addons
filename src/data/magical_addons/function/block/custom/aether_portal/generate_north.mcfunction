# block:custom/aether_portal/generate_north
# called by: dimension:the_aether/save_portal, dungeon:aether_portal/check_frame

execute store success score #magical_addons:aether_portal maddons.temp unless block ~ ~ ~-1 #magical_addons:aether_portal unless block ~ ~ ~ #magical_addons:aether_portal

## Part: foot
summon item_display ~ ~ ~ {data:{magical_addons:{id:"aether_portal",face:"north",part:"foot",break_cmd:"execute unless block ~ ~ ~ #magical_addons:aether_portal[facing=north,part=foot] run function magical_addons:block/custom/aether_portal/break"}},item:{id:"spawner",components:{"minecraft:item_model":"air"}},Tags:[maddons.block,maddons.aether_portal,maddons.invul,maddons.block.face_north,maddons.block.part_foot]}
execute if score #magical_addons:aether_portal maddons.temp matches 1 run setblock ~ ~ ~ white_bed[facing=north,part=foot]
#data merge block ~ ~ ~ {components:{custom_data:{magical_addons:{generated:true,id:"aether_portal"}}}}

## Part: head
execute positioned ~ ~ ~-1 summon item_display run data merge entity @s {data:{magical_addons:{id:"aether_portal",face:"north",part:"head",break_cmd:"execute unless block ~ ~ ~ #magical_addons:aether_portal[facing=north,part=head] run function magical_addons:block/custom/aether_portal/break"}},transformation:{translation:[0.0,0.005,0.0],scale:[1.001,1.001,1.001]},Rotation:[180f,0f],item:{id:"white_bed",components:{"minecraft:item_model":"magical_addons:aether_portal"}},view_range:64,Tags:[maddons.block,maddons.aether_portal,maddons.invul,maddons.block.face_north,maddons.block.part_head]}
execute if score #magical_addons:aether_portal maddons.temp matches 1 run setblock ~ ~ ~-1 white_bed[facing=north,part=head]
#execute positioned ~ ~ ~-1 run data merge block ~ ~ ~ {components:{custom_data:{magical_addons:{generated:true,id:"aether_portal"}}}}

## Light
fill ~-1 ~ ~-2 ~1 ~ ~1 light[level=10] keep