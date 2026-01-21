# block:custom/aether_portal/generate_east
# called by: dungeon:aether_portal/check_frame

## Part: foot
summon item_display ~ ~ ~ {data:{magical_addons:{id:"aether_portal",face:"east",part:"foot",break_cmd:"execute unless block ~ ~ ~ #magical_addons:aether_portal[facing=east,part=foot] run function magical_addons:block/custom/aether_portal/break"}},item:{id:"trial_spawner",components:{"minecraft:item_model":"air"}},Tags:[maddons.block,maddons.aether_portal,maddons.invul,maddons.block.face_east,maddons.block.part_foot]}
execute unless block ~ ~ ~ #magical_addons:aether_portal run setblock ~ ~ ~ white_bed[facing=east,part=foot]
data merge block ~ ~ ~ {components:{enchantable:{value:1},enchantments:{"magical_addons:lucidity":1},custom_data:{magical_addons:{generated:true,id:"aether_portal"}}}}

## Part: head
execute positioned ~1 ~ ~ summon item_display run data merge entity @s {data:{magical_addons:{id:"aether_portal",face:"east",part:"head",break_cmd:"execute unless block ~ ~ ~ #magical_addons:aether_portal[facing=east,part=head] run function magical_addons:block/custom/aether_portal/break"}},transformation:{translation:[0.0,0.005,0.0],scale:[1.001,1.001,1.001]},Rotation:[90f,0f],item:{id:"white_bed",components:{"minecraft:enchantments":{"magical_addons:lucidity":1}}},view_range:64,Tags:[maddons.block,maddons.aether_portal,maddons.invul,maddons.block.face_east,maddons.block.part_head]}
execute positioned ~1 ~ ~ unless block ~ ~ ~ #magical_addons:aether_portal run setblock ~ ~ ~ white_bed[facing=east,part=head]
execute positioned ~1 ~ ~ run data merge block ~ ~ ~ {components:{enchantable:{value:1},enchantments:{"magical_addons:lucidity":1},custom_data:{magical_addons:{generated:true,id:"aether_portal"}}}}

## Light
fill ~-1 ~ ~-1 ~2 ~ ~1 light[level=10] keep