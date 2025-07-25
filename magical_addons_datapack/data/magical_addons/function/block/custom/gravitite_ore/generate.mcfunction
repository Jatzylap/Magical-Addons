# block:custom/gravitite_ore/generate
# called by: dimension:the_aether/worldgen/set_blocks

## Block
execute summon item_display run data merge entity @s {transformation:{scale:[-1,1,-1]},Tags:[maddons.block,maddons.gravitite_ore,maddons.block.gravitite],teleport_duration:3,item:{id:"spawner",components:{item_model:"magical_addons:gravitite_ore",custom_data:{magical_addons:{group:"gravitite",id:"gravitite_ore",cmd:"execute unless block ~ ~ ~ spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:gravitite_ore}}}} run function magical_addons:block/custom/gravitite_ore/break"}}}},view_range:64}
setblock ~ ~ ~ spawner{components:{"minecraft:item_model":"magical_addons:gravitite_ore","minecraft:item_name":"{\"translate\":\"item.magical_addons.gravitite_ore\"}","minecraft:hide_additional_tooltip":{},custom_data:{magical_addons:{generated:1b,break_speed:1.0,sound_pitch:1.0,sound_id:"block.stone.step",group:"gravitite",id:"gravitite_ore",properties:{light:1b}}}}}

## Light
summon item_display ~ ~ ~ {Tags:[maddons.light,maddons.cullable,maddons.gravitite_ore],teleport_duration:3,item:{id:"stick",components:{item_model:"air",custom_model_data:{colors:[[1,0,1]]},custom_data:{magical_addons:{group:"gravitite",id:"gravitite_ore",cmd:"execute unless block ~ ~ ~ spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:gravitite_ore}}}} run function magical_addons:block/custom/gravitite_ore/break"}}}},view_range:64,item_display:"head"}
execute if predicate magical_addons:block/visible unless entity @e[type=item_display,tag=maddons.light,nbt={item:{components:{"minecraft:item_model":"magical_addons:misc/light"}}},distance=..1.5] run data modify entity @n[type=item_display,tag=maddons.light,distance=...5] item.components."minecraft:item_model" set value "magical_addons:misc/light"
ride @n[type=item_display,tag=maddons.light,distance=...5] mount @n[type=item_display,tag=maddons.gravitite_ore,tag=maddons.block,distance=...5]