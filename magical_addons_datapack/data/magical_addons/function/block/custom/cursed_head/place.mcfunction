# block:custom/cursed_head/place
# called by: block:custom/cursed_head/scan

#summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.invul,maddons.persistent,maddons.tickable,maddons.cursed_head],item:{id:"stick",components:{item_model:"air",custom_data:{magical_addons:{id:"cursed_head",block:"chiseled_bookshelf{components:{magical_addons:{id:cursed_head}}}",cmd:"function magical_addons:block/custom/cursed_head/break"}}}},shadow_strength:0f,view_range:300f}
#execute as @n[type=item_display,tag=maddons.cursed_head,distance=...5] at @s run function magical_addons:dev/register_entity {id:"cursed_head",cmd:"function magical_addons:block/custom/cursed_head/tick"}