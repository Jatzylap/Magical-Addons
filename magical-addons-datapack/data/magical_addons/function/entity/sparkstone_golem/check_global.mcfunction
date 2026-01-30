# entity:sparkstone_golem/check_global
# called by: main:one_second

## Despawn
execute on vehicle unless predicate magical_addons:shared/riding_vehicle run return run function magical_addons:entity/sparkstone_golem/despawn
execute on vehicle at @s[y=-999,dy=-9999] unless predicate magical_addons:shared/riding_vehicle run return run function magical_addons:entity/sparkstone_golem/despawn

## Scale
execute store result entity @s shadow_radius float 0.00015 on vehicle on vehicle run attribute @s minecraft:scale get 1000
execute store result entity @s transformation.translation[1] float 0.00001 on vehicle on vehicle run attribute @s minecraft:scale get 1000
execute store result entity @s transformation.scale[0] float 0.0005 store result entity @s transformation.scale[1] float 0.0005 store result entity @s transformation.scale[2] float 0.0005 on vehicle on vehicle run attribute @s minecraft:scale get 1000

## Hop
execute unless entity @p[distance=..32,tag=!maddons.invul] if predicate magical_addons:shared/25_percent unless block ~ ~-0.5 ~ #magical_addons:non_collidable run return run function magical_addons:dev/set_motion_vector {power:1.0}

execute on vehicle on vehicle at @s run rotate @s facing entity @p[distance=..32,tag=!maddons.invul] eyes
execute at @s run rotate @s facing entity @p[distance=..32,tag=!maddons.invul] eyes
execute at @s run rotate @s ~ 0
execute on vehicle on vehicle at @s if data entity @s {OnGround:1b} facing entity @p[distance=..32,tag=!maddons.invul] eyes on passengers on passengers at @s rotated ~ -15 on vehicle on vehicle at @s run function magical_addons:dev/set_motion_vector {power:1.0}
#execute on vehicle on vehicle at @s if block ~ ~-0.5 ~ #magical_addons:fluids facing entity @p[distance=..32,tag=!maddons.invul] eyes rotated ~ -70 run function magical_addons:dev/set_motion_vector {power:1.0}