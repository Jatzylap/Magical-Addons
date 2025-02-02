# block:group/vanilla/emerald_ores/place
# called by: block:place, dimension:*/worldgen/set_blocks

execute if predicate magical_addons:block/visible unless entity @e[distance=..2.5,type=item_display,tag=maddons.light] run summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.vanilla,maddons.cullable,maddons.persistent,maddons.light,maddons.emerald_ores],item:{id:"stick",count:1,components:{item_model:"magical_addons:misc/light",custom_model_data:{colors:[I;65280],custom_data:{magical_addons:{id:"emerald_ores",block:"#emerald_ores",cmd:"kill"}}}}},item_display:"head",shadow_strength:0f}
$fill ~ ~ ~ ~ ~ ~ $(id) replace command_block