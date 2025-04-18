# block:group/vanilla/redstone_ores/place
# called by: block:group/vanilla/redstone_ores/scan

execute if predicate magical_addons:block/visible unless entity @e[distance=..1.5,type=item_display,tag=maddons.light] run summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.vanilla,maddons.cullable,maddons.persistent,maddons.light,maddons.redstone_ores],item:{id:"stick",count:1,components:{item_model:"magical_addons:misc/light",custom_model_data:{colors:[I;16711680]},custom_data:{magical_addons:{id:"redstone_ores",block:"#redstone_ores",cmd:"kill"}}}},item_display:"head",shadow_strength:0f}