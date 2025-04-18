# block:group/vanilla/diamond_ores/tick_diamond_ore
# called by: dimension:*/worldgen/set_blocks

execute if predicate magical_addons:block/visible unless entity @e[distance=..1.5,type=item_display,tag=maddons.light] run summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.vanilla,maddons.cullable,maddons.persistent,maddons.light,maddons.diamond_ores],item:{id:"stick",count:1,components:{item_model:"magical_addons:misc/light",custom_model_data:{colors:[I;65535]},custom_data:{magical_addons:{id:"diamond_ores",block:"#diamond_ores",cmd:"kill"}}}},item_display:"head",shadow_strength:0f}

setblock ~ ~ ~ diamond_ore