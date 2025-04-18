# block:vanilla/brewing_stand/place
# called by: block:vanilla/brewing_stand/scan

summon item_display ~ ~ ~ {item:{id:"stick",components:{item_model:"air",custom_data:{magical_addons:{id:"brewing_stand",block:"brewing_stand",cmd:"kill"}}}},Tags:[maddons.block,maddons.persistent,maddons.vanilla,maddons.brewing_stand]}