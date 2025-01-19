# block:custom/cursed_head/place
# called by: block:place

summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.invul,maddons.tickable,maddons.cursed_head],shadow_strength:0f,view_range:300f}
execute as @n[type=item_display,tag=maddons.cursed_head,distance=...5] at @s run function magical_addons:block/register with entity @s