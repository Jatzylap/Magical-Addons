# item:sparkstone_orb/shoot
# called by: item:sparkstone_orb/use

execute summon item_display run ride @s mount @n[type=snowball,tag=maddons.sparkstone_orb,tag=!maddons.summoned]
execute on passengers run data merge entity @s {Tags:[maddons.entity,maddons.sparkstone_orb,maddons.invul,maddons.entity.tickable],data:{magical_addons:{tick_cmd:"function magical_addons:item/sparkstone_orb/loop"}},billboard:"center",view_range:300f,transformation:{scale:[0.55f,0.55f,0.55f]},teleport_duration:2}
execute on passengers run data modify entity @s item set from entity @n[type=snowball,tag=maddons.sparkstone_orb,tag=!maddons.summoned] Item
data merge entity @s {Item:{count:1,id:stick,components:{item_model:"magical_addons:font/space"}}}
execute if entity @s[tag=maddons.no_break] on passengers run tag @s add maddons.no_break
tag @s add maddons.summoned
function magical_addons:dev/set_motion_vector {power:1.5}