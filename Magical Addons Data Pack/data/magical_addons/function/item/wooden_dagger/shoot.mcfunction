# item:wooden_dagger/shoot
# called by: item:wooden_dagger/use

execute summon item_display run ride @s mount @n[type=snowball,tag=maddons.wooden_dagger,tag=!maddons.summoned]
execute on passengers store result entity @s Rotation[0] float 1 run data get entity @p[advancements={magical_addons:---/item/use/wooden_dagger=true}] Rotation[0]
execute on passengers run data merge entity @s {Tags:[maddons.entity,maddons.wooden_dagger,maddons.invul],view_range:300f,teleport_duration:3,transformation:{left_rotation:[0.0f,0.707f,0.0f,0.707f],right_rotation:[0.0f,0.0f,0.353f,0.935f]}}
execute on passengers run function magical_addons:dev/register_entity {tick_cmd:"function magical_addons:item/wooden_dagger/loop"}
execute on passengers run data modify entity @s item set from entity @n[type=snowball,tag=maddons.wooden_dagger,tag=!maddons.summoned] Item
data merge entity @s {Item:{count:1,id:stick,components:{item_model:"magical_addons:font/space"}}}
execute if entity @s[tag=maddons.no_break] on passengers run tag @s add maddons.no_break
tag @s add maddons.summoned
function magical_addons:dev/set_motion_vector {power:1.5}