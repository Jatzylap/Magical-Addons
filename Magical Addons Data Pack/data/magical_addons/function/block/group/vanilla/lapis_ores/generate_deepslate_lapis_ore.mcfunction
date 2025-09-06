# block:group/vanilla/lapis_ores/generate_deepslate_lapis_ore
# called by: dimension:*/worldgen/set_blocks

summon item_display ~ ~ ~ {data:{magical_addons:{id:"lapis_ores",break_cmd:"execute unless block ~ ~ ~ #lapis_ores run kill @n[type=item_display,tag=maddons.lapis_ores,distance=...5]"}},Tags:[maddons.block,maddons.vanilla,maddons.cullable,maddons.light,maddons.lapis_ores,maddons.block.unloadable],item:{id:"stick",count:1,components:{item_model:"air",custom_model_data:{colors:[I;255]}}},item_display:"head",shadow_strength:0f}

execute if predicate magical_addons:block/visible unless entity @e[type=item_display,tag=maddons.light,nbt={item:{components:{"minecraft:item_model":"magical_addons:misc/light"}}},distance=..1.5] run data modify entity @n[type=item_display,tag=maddons.light,distance=...5] item.components."minecraft:item_model" set value "magical_addons:misc/light"

setblock ~ ~ ~ deepslate_lapis_ore