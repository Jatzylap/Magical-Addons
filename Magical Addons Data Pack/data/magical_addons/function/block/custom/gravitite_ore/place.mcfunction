# block:custom/gravitite_ore/place
# called by: block:custom/gravitite_ore/scan

## Sound
playsound block.stone.place block @a ~ ~ ~ 1 0.8

## Block
execute summon item_display run data merge entity @s {data:{magical_addons:{group:"gravitite",id:"gravitite_ore",break_cmd:"execute unless block ~ ~ ~ spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:gravitite_ore}}}} run function magical_addons:block/custom/gravitite_ore/break"}},transformation:{scale:[-1,1,-1]},Tags:[maddons.block,maddons.gravitite_ore,maddons.block.gravitite],teleport_duration:3,item:{id:"spawner",components:{item_model:"magical_addons:gravitite_ore"}},view_range:64}
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b

## Light
summon item_display ~ ~ ~ {data:{magical_addons:{group:"gravitite",id:"gravitite_ore",break_cmd:"execute unless block ~ ~ ~ spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:gravitite_ore}}}} run function magical_addons:block/custom/gravitite_ore/break"}},Tags:[maddons.light,maddons.cullable,maddons.gravitite_ore],teleport_duration:3,item:{id:"stick",components:{item_model:"air",custom_model_data:{colors:[[1,0,1]]}}},view_range:64,item_display:"head"}
execute if predicate magical_addons:block/visible unless entity @e[type=item_display,tag=maddons.light,nbt={item:{components:{"minecraft:item_model":"magical_addons:misc/light"}}},distance=..1.5] run data modify entity @n[type=item_display,tag=maddons.light,distance=...5] item.components."minecraft:item_model" set value "magical_addons:misc/light"
ride @n[type=item_display,tag=maddons.light,distance=...5] mount @n[type=item_display,tag=maddons.gravitite_ore,tag=maddons.block,distance=...5]