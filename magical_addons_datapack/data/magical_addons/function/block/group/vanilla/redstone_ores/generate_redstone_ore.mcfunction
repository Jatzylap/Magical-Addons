# block:group/vanilla/redstone_ores/generate_redstone_ore
# called by: dimension:*/worldgen/set_blocks

summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.vanilla,maddons.cullable,maddons.light,maddons.redstone_ores],item:{id:"stick",count:1,components:{item_model:"air",custom_model_data:{colors:[I;16711680]},custom_data:{magical_addons:{id:"redstone_ores",cmd:"execute unless block ~ ~ ~ #redstone_ores run kill @n[type=item_display,tag=maddons.redstone_ores,distance=...5]"}}}},item_display:"head"}

execute if predicate magical_addons:block/visible unless entity @e[type=item_display,tag=maddons.light,nbt={item:{components:{"minecraft:item_model":"magical_addons:misc/light"}}},distance=..1.5] run data modify entity @n[type=item_display,tag=maddons.light,distance=...5] item.components."minecraft:item_model" set value "magical_addons:misc/light"

setblock ~ ~ ~ redstone_ore