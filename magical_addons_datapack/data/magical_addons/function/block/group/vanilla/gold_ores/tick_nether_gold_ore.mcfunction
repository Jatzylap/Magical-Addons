# block:group/vanilla/gold_ores/tick_nether_gold_ore
# called by: dimension:*/worldgen/set_blocks

execute if predicate magical_addons:block/visible unless entity @e[distance=..1.5,type=item_display,tag=maddons.light] run summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.vanilla,maddons.cullable,maddons.persistent,maddons.light,maddons.gold_ores],item:{id:"stick",count:1,components:{item_model:"magical_addons:misc/light",custom_model_data:{colors:[I;16776960]},custom_data:{magical_addons:{id:"gold_ores",block:"#magical_addons:gold_ores",cmd:"kill"}}}},item_display:"head",shadow_strength:0f}

setblock ~ ~ ~ nether_gold_ore