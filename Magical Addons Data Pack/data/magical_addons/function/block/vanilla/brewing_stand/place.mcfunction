# block:vanilla/brewing_stand/place
# called by: block:vanilla/brewing_stand/scan, block:set_id

summon item_display ~ ~ ~ {data:{magical_addons:{id:"brewing_stand",cmd:"execute unless block ~ ~ ~ brewing_stand run kill @n[type=item_display,tag=maddons.brewing_stand,distance=...5]"}},item:{id:"stick",components:{item_model:"air"}},Tags:[maddons.block,maddons.vanilla,maddons.brewing_stand]}