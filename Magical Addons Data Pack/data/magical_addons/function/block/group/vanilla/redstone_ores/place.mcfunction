# block:group/vanilla/redstone_ores/place
# called by: block:place, dimension:*/worldgen/set_blocks

execute unless entity @e[distance=..2.5,type=item_display,tag=maddons.light] run summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.vanilla,maddons.cullable,maddons.persistent,maddons.light,maddons.redstone_ores],item:{id:"stick",count:1,components:{item_model:"magical_addons:misc/light",custom_model_data:{colors:[I;16711680]}}},item_display:"head",shadow_strength:0f}
$fill ~ ~ ~ ~ ~ ~ $(id) replace command_block