# item:sparkstone_splash_potion/launch
# called by: item:sparkstone_splash_potion/use_*

execute summon item_display run ride @s mount @n[type=splash_potion,tag=maddons.sparkstone_splash_potion]
execute on passengers store result entity @s Rotation[0] float 1 run data get entity @p[advancements={magical_addons:---/item/use/sparkstone_splash_potion=true}] Rotation[0]
execute on passengers run data merge entity @s {Tags:[maddons.entity,maddons.sparkstone_splash_potion,maddons.invul],view_range:64}
execute on passengers run function magical_addons:dev/register_entity {tick_cmd:"function magical_addons:entity/sparkstone_splash_potion/tick"}
function magical_addons:dev/set_motion_vector {power:0.5}