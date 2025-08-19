# block:custom/aether_portal/generate_west
# called by: dungeon:aether_portal/check_frame

## Part: foot
summon item_display ~ ~ ~ {item:{id:"spawner",components:{"minecraft:item_model":"air","minecraft:custom_data":{magical_addons:{id:"aether_portal",face:"west",part:"foot",cmd:"execute unless block ~ ~ ~ white_bed[facing=west,part=foot] run function magical_addons:block/custom/aether_portal/break"}}}},Tags:[maddons.block,maddons.aether_portal,maddons.invul,maddons.block.face_west,maddons.block.part_foot]}
setblock ~ ~ ~ white_bed[facing=west,part=foot]{components:{tooltip_display:{hidden_components:["minecraft:block_entity_data"]},item_name:{"translate":"item.magical_addons.aether_portal"},rarity:"uncommon",item_model:"magical_addons:aether_portal",custom_data:{magical_addons:{generated:true,id:"aether_portal"}}}} replace

## Part: head
execute positioned ~-1 ~ ~ summon item_display run data merge entity @s {transformation:{translation:[0.0,0.005,0.0],scale:[1.01,1.01,1.01]},Rotation:[-90f,0f],item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:aether_portal","minecraft:custom_data":{magical_addons:{id:"aether_portal",face:"west",part:"head",cmd:"execute unless block ~ ~ ~ white_bed[facing=west,part=head] run function magical_addons:block/custom/aether_portal/break"}}}},view_range:64,Tags:[maddons.block,maddons.aether_portal,maddons.invul,maddons.block.face_west,maddons.block.part_head]}
execute positioned ~-1 ~ ~ run setblock ~ ~ ~ white_bed[facing=west,part=head]{components:{tooltip_display:{hidden_components:["minecraft:block_entity_data"]},item_name:{"translate":"item.magical_addons.aether_portal"},rarity:"uncommon",item_model:"magical_addons:aether_portal",custom_data:{magical_addons:{generated:true,id:"aether_portal"}}}} replace

## Light
fill ~-2 ~ ~-1 ~1 ~1 ~1 light[level=15] keep