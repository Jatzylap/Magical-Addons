# item:dagger/diamond_dagger/shoot
# called by: item:dagger/use

execute summon item_display run data merge entity @s {Tags:[maddons.item,maddons.diamond_dagger,maddons.invul],view_range:300f,teleport_duration:3,transformation:{left_rotation:[0.0f,0.707f,0.0f,0.707f],right_rotation:[0.0f,0.0f,0.353f,0.935f]}}
ride @n[tag=maddons.diamond_dagger] mount @s
execute as @n[tag=maddons.diamond_dagger] run function magical_addons:dev/register_entity {id:"diamond_dagger",cmd:"function magical_addons:item/dagger/diamond_dagger/loop"}
data modify entity @n[tag=maddons.diamond_dagger] item set from entity @s Item
data merge entity @s {Tags:[maddons.invul,maddons.dagger],Item:{id:"stick",components:{"minecraft:item_model":"magical_addons:font/space"}}}