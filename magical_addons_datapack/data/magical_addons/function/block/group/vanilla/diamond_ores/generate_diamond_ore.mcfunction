# block:group/vanilla/diamond_ores/generate_diamond_ore
# called by: dimension:*/worldgen/set_blocks

summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.vanilla,maddons.cullable,maddons.light,maddons.diamond_ores],item:{id:"stick",count:1,components:{item_model:"air",custom_model_data:{colors:[I;65535]},custom_data:{magical_addons:{id:"diamond_ores",cmd:"execute unless block ~ ~ ~ #diamond_ores run kill @n[type=item_display,tag=maddons.diamond_ores,distance=...5]"}}}},item_display:"head",shadow_strength:0f}

execute if predicate magical_addons:block/visible unless entity @e[type=item_display,tag=maddons.light,nbt={item:{components:{"minecraft:item_model":"magical_addons:misc/light"}}},distance=..1.5] run data modify entity @n[type=item_display,tag=maddons.light,distance=...5] item.components."minecraft:item_model" set value "magical_addons:misc/light"

setblock ~ ~ ~ diamond_ore