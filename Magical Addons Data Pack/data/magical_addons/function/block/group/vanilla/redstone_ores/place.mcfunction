# block:group/vanilla/redstone_ores/place
# called by: block:group/vanilla/redstone_ores/scan

## Block
summon item_display ~ ~ ~ {data:{magical_addons:{id:"redstone_ores",break_cmd:"execute unless block ~ ~ ~ #redstone_ores run kill @n[type=item_display,tag=maddons.redstone_ores,distance=...5]"}},Tags:[maddons.block,maddons.vanilla,maddons.cullable,maddons.light,maddons.redstone_ores],item:{id:"stick",count:1,components:{item_model:"air",custom_model_data:{colors:[I;16711680]}}},item_display:"head"}

## Light
execute if predicate magical_addons:block/visible unless entity @e[type=item_display,tag=maddons.light,nbt={item:{components:{"minecraft:item_model":"magical_addons:misc/light"}}},distance=..1.5] run data modify entity @n[type=item_display,tag=maddons.light,distance=...5] item.components."minecraft:item_model" set value "magical_addons:misc/light"