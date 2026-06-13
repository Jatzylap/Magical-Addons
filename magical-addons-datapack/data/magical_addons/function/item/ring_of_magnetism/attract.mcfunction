# item:ring_of_magnetism/attract
# called by: player:tick

tag @s remove maddons.entity.use_ring_of_magnetism
execute if items entity @s weapon.* *[custom_data~{magical_addons:{id:"ring_of_magnetism"}}] run tag @s add maddons.entity.use_ring_of_magnetism
execute if entity @s[tag=maddons.entity.use_ring_of_magnetism] as @e[type=#magical_addons:attractable,type=!player,tag=!maddons.entity.unattractable,distance=1..16] at @s anchored eyes facing entity @n[type=player,tag=maddons.entity.use_ring_of_magnetism] eyes run function magical_addons:dev/set_motion_vector {power:0.3}