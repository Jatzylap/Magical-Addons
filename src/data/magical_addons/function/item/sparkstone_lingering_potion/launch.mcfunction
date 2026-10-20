# item:sparkstone_lingering_potion/launch
# called by: item:sparkstone_lingering_potion/use_*

execute summon item_display run ride @s mount @n[type=lingering_potion,tag=maddons.sparkstone_lingering_potion]
execute on passengers store result entity @s Rotation[0] float 1 run data get entity @p[advancements={magical_addons:---/item/use/sparkstone_lingering_potion=true}] Rotation[0]
execute on passengers run data merge entity @s {Tags:[maddons.entity,maddons.entity.tickable,maddons.sparkstone_lingering_potion,maddons.invul],view_range:64,data:{magical_addons:{tick_cmd:"function magical_addons:entity/sparkstone_lingering_potion/tick"}}}
function magical_addons:dev/set_motion_vector {power:0.5}