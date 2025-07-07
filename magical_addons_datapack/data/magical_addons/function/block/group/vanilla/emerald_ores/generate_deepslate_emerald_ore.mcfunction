# block:group/vanilla/emerald_ores/generate_deepslate_emerald_ore
# called by: dimension:*/worldgen/set_blocks

summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.vanilla,maddons.cullable,maddons.light,maddons.emerald_ores],item:{id:"stick",count:1,components:{item_model:"air",custom_model_data:{colors:[I;65280]},custom_data:{magical_addons:{id:"emerald_ores",cmd:"execute unless block ~ ~ ~ #emerald_ores run kill @n[type=item_display,tag=maddons.emerald_ores,distance=...5]"}}}},item_display:"head"}

execute if predicate magical_addons:block/visible unless entity @n[type=item_display,tag=maddons.light,nbt={item:{components:{"minecraft:item_model":"magical_addons:misc/light"}}},distance=..1.5] run data modify entity @n[type=item_display,tag=maddons.light,distance=...5] item.components."minecraft:item_model" set value "magical_addons:misc/light"

setblock ~ ~ ~ deepslate_emerald_ore