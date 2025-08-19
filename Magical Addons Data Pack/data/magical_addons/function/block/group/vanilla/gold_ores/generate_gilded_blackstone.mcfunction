# block:group/vanilla/gold_ores/generate_gilded_blackstone
# called by: dimension:*/worldgen/set_blocks

summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.vanilla,maddons.cullable,maddons.light,maddons.gold_ores],item:{id:"stick",count:1,components:{item_model:"air",custom_model_data:{colors:[I;16776960]},custom_data:{magical_addons:{id:"gold_ores",cmd:"execute unless block ~ ~ ~ #magical_addons:gold_ores run kill @n[type=item_display,tag=maddons.gold_ores,distance=...5]"}}}},item_display:"head",shadow_strength:0f}

execute if predicate magical_addons:block/visible unless entity @e[type=item_display,tag=maddons.light,nbt={item:{components:{"minecraft:item_model":"magical_addons:misc/light"}}},distance=..1.5] run data modify entity @n[type=item_display,tag=maddons.light,distance=...5] item.components."minecraft:item_model" set value "magical_addons:misc/light"

setblock ~ ~ ~ gilded_blackstone