# block:custom/aether_portal/generate_north
# called by: dimension:the_aether/save_portal, dungeon:aether_portal/check_frame

## Part: foot
summon item_display ~ ~ ~ {data:{magical_addons:{id:"aether_portal",face:"north",part:"foot",cmd:"execute unless block ~ ~ ~ white_bed[facing=north,part=foot] run function magical_addons:block/custom/aether_portal/break"}},item:{id:"spawner",components:{"minecraft:item_model":"air"}},Tags:[maddons.block,maddons.aether_portal,maddons.invul,maddons.block.face_north,maddons.block.part_foot]}
setblock ~ ~ ~ white_bed[facing=north,part=foot]{components:{tooltip_display:{hidden_components:["minecraft:block_entity_data"]},item_name:{"translate":"item.magical_addons.aether_portal"},rarity:"uncommon",item_model:"magical_addons:aether_portal",custom_data:{magical_addons:{generated:true,id:"aether_portal"}}}} replace

## Part: head
execute positioned ~ ~ ~-1 summon item_display run data merge entity @s {data:{magical_addons:{id:"aether_portal",face:"north",part:"head",cmd:"execute unless block ~ ~ ~ white_bed[facing=north,part=head] run function magical_addons:block/custom/aether_portal/break"}},transformation:{translation:[0.0,0.005,0.0],scale:[1.01,1.01,1.01]},Rotation:[0f],item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:aether_portal"}},view_range:64,Tags:[maddons.block,maddons.aether_portal,maddons.invul,maddons.block.face_north,maddons.block.part_head]}
execute positioned ~ ~ ~-1 run setblock ~ ~ ~ white_bed[facing=north,part=head]{components:{tooltip_display:{hidden_components:["minecraft:block_entity_data"]},item_name:{"translate":"item.magical_addons.aether_portal"},rarity:"uncommon",item_model:"magical_addons:aether_portal",custom_data:{magical_addons:{generated:true,id:"aether_portal"}}}} replace

## Light
fill ~-1 ~ ~-2 ~1 ~1 ~1 light[level=15] keep