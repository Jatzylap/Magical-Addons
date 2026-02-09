# block:custom/aether_portal/generate_west
# called by: dungeon:aether_portal/check_frame

## Part: foot
summon item_display ~ ~ ~ {data:{magical_addons:{id:"aether_portal",face:"west",part:"foot",break_cmd:"execute unless block ~ ~ ~ #magical_addons:aether_portal[facing=west,part=foot] run function magical_addons:block/custom/aether_portal/break"}},item:{id:"spawner",components:{"minecraft:item_model":"air"}},Tags:[maddons.block,maddons.aether_portal,maddons.invul,maddons.block.face_west,maddons.block.part_foot]}
execute unless block ~ ~ ~ #magical_addons:aether_portal run setblock ~ ~ ~ white_bed[facing=west,part=foot]
data merge block ~ ~ ~ {components:{enchantable:{value:1},enchantments:{"magical_addons:lucidity":1},custom_data:{magical_addons:{generated:true,id:"aether_portal"}}}}

## Part: head
execute positioned ~-1 ~ ~ summon item_display run data merge entity @s {data:{magical_addons:{id:"aether_portal",face:"west",part:"head",break_cmd:"execute unless block ~ ~ ~ #magical_addons:aether_portal[facing=west,part=head] run function magical_addons:block/custom/aether_portal/break"}},transformation:{translation:[0.0,0.005,0.0],scale:[1.001,1.001,1.001]},Rotation:[-90f,0f],item:{id:"white_bed",components:{"minecraft:item_model":"magical_addons:aether_portal"}},view_range:64,Tags:[maddons.block,maddons.aether_portal,maddons.invul,maddons.block.face_west,maddons.block.part_head]}
execute positioned ~-1 ~ ~ unless block ~ ~ ~ #magical_addons:aether_portal run setblock ~ ~ ~ white_bed[facing=west,part=head]
execute positioned ~-1 ~ ~ run data merge block ~ ~ ~ {components:{enchantable:{value:1},enchantments:{"magical_addons:lucidity":1},custom_data:{magical_addons:{generated:true,id:"aether_portal"}}}}

## Light
fill ~-2 ~ ~-1 ~1 ~ ~1 light[level=10] keep