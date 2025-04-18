# item:dagger/sparkstone_orb/shoot
# called by: item:dagger/use

execute summon item_display run data merge entity @s {Tags:[maddons.item,maddons.dagger,maddons.sparkstone_orb,maddons.invul],billboard:"center",view_range:300f,teleport_duration:2}
ride @n[type=item_display,tag=maddons.sparkstone_orb] mount @s
execute as @n[type=item_display,tag=maddons.sparkstone_orb] run function magical_addons:dev/register_entity {id:"sparkstone_orb",cmd:"function magical_addons:item/dagger/sparkstone_orb/loop"}
data modify entity @n[type=item_display,tag=maddons.sparkstone_orb] item set from entity @s Item
data merge entity @s {Tags:[maddons.invul,maddons.dagger,maddons.sparkstone_orb],Item:{id:"stick",components:{"minecraft:item_model":"magical_addons:font/space"}}}