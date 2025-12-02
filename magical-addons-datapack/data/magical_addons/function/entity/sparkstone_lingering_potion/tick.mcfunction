# item:sparkstone_lingering_potion/tick
# called by: entity:tick

execute unless predicate magical_addons:shared/riding_vehicle run summon area_effect_cloud ~ ~ ~ {Tags:[maddons.entity.tickable],data:{magical_addons:{tick_cmd:"function magical_addons:entity/sparkstone_lingering_potion/cloud_tick"}}}
execute unless predicate magical_addons:shared/riding_vehicle on passengers run kill
execute unless predicate magical_addons:shared/riding_vehicle run kill
execute unless predicate magical_addons:shared/riding_vehicle as @a[dy=-2] run return run scoreboard players add @s maddons.mana 50
execute unless predicate magical_addons:shared/riding_vehicle run scoreboard players add @a[distance=..2.5] maddons.mana 50