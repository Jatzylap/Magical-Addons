# block:custom/aether_portal/generate_south
# called by: dungeon:aether_portal/check_frame

## Part: foot
summon item_display ~ ~ ~ {data:{magical_addons:{id:"aether_portal",face:"south",part:"foot",break_cmd:"execute unless block ~ ~ ~ white_bed[facing=south,part=foot] run function magical_addons:block/custom/aether_portal/break"}},item:{id:"spawner",components:{"minecraft:item_model":"air"}},Tags:[maddons.block,maddons.aether_portal,maddons.invul,maddons.block.face_south,maddons.block.part_foot]}
setblock ~ ~ ~ white_bed[facing=south,part=foot]{components:{enchantable:{value:1},enchantments:{"magical_addons:lucidity":1},custom_data:{magical_addons:{generated:true,id:"aether_portal"}}}} replace

## Part: head
execute positioned ~ ~ ~1 summon item_display run data merge entity @s {data:{magical_addons:{id:"aether_portal",face:"south",part:"head",break_cmd:"execute unless block ~ ~ ~ white_bed[facing=south,part=head] run function magical_addons:block/custom/aether_portal/break"}},transformation:{translation:[0.0,0.005,0.0],scale:[1.01,1.01,1.01]},Rotation:[180f,0f],item:{id:"white_bed",components:{"minecraft:enchantments":{"magical_addons:lucidity":1}}},view_range:64,Tags:[maddons.block,maddons.aether_portal,maddons.invul,maddons.block.face_south,maddons.block.part_head]}
execute positioned ~ ~ ~1 run setblock ~ ~ ~ white_bed[facing=south,part=head]{components:{enchantable:{value:1},enchantments:{"magical_addons:lucidity":1},custom_data:{magical_addons:{generated:true,id:"aether_portal"}}}} replace

## Light
fill ~-1 ~ ~-1 ~1 ~1 ~2 light[level=15] keep