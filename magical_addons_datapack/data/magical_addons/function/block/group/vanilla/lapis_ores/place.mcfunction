# block:group/vanilla/lapis_ores/place
# called by: block:group/vanilla/lapis_ores/scan

execute if predicate magical_addons:block/visible unless entity @e[distance=..1.5,type=item_display,tag=maddons.light] run summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.vanilla,maddons.cullable,maddons.persistent,maddons.light,maddons.lapis_ores],item:{id:"stick",count:1,components:{item_model:"magical_addons:misc/light",custom_model_data:{colors:[I;255]},custom_data:{magical_addons:{id:"lapis_ores",block:"#lapis_ores",cmd:"kill"}}}},item_display:"head",shadow_strength:0f}