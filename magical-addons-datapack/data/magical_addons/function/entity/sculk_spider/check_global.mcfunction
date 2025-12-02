# entity:sculk_spider/check_global
# called by: main:one_second

## Despawn
execute on vehicle unless predicate magical_addons:shared/riding_vehicle run return run function magical_addons:entity/sculk_spider/despawn
execute on vehicle at @s[y=-999,dy=-9999] unless predicate magical_addons:shared/riding_vehicle run return run function magical_addons:entity/sculk_spider/despawn

## Scale
execute on vehicle on passengers store result entity @s transformation.translation[1] float -0.000167 on vehicle on vehicle run attribute @s minecraft:scale get 1000
execute on vehicle on passengers store result entity @s transformation.scale[0] float 0.000667 store result entity @s transformation.scale[1] float 0.000667 store result entity @s transformation.scale[2] float 0.000667 on vehicle on vehicle run attribute @s minecraft:scale get 1000
execute store result entity @s shadow_radius float 0.000576 on vehicle on vehicle run attribute @s minecraft:scale get 1000

## Flip
execute if entity @s[tag=!maddons.entity.ai] run return 0
execute unless entity @n[type=!#magical_addons:invulnerable,tag=!maddons.sculk_spider,tag=!maddons.invul,dy=-32] unless block ~ ~1 ~ #magical_addons:non_collidable if block ~ ~-1 ~ #magical_addons:non_collidable run return run function magical_addons:entity/sculk_spider/moves/flip_ceiling
execute unless entity @n[type=!#magical_addons:invulnerable,tag=!maddons.sculk_spider,tag=!maddons.invul,dy=-32] unless block ^1 ^ ^ #magical_addons:non_collidable if block ^-1 ^ ^ #magical_addons:non_collidable if block ^ ^ ^1 #magical_addons:non_collidable if block ^ ^ ^-1 #magical_addons:non_collidable run return run function magical_addons:entity/sculk_spider/moves/flip_side_left
execute unless entity @n[type=!#magical_addons:invulnerable,tag=!maddons.sculk_spider,tag=!maddons.invul,dy=-32] unless block ^-1 ^ ^ #magical_addons:non_collidable if block ^1 ^ ^ #magical_addons:non_collidable if block ^ ^ ^1 #magical_addons:non_collidable if block ^ ^ ^-1 #magical_addons:non_collidable run return run function magical_addons:entity/sculk_spider/moves/flip_side_right
execute unless entity @n[type=!#magical_addons:invulnerable,tag=!maddons.sculk_spider,tag=!maddons.invul,dy=-32] if block ~ ~1 ~ #magical_addons:non_collidable if block ~ ~-1 ~ #magical_addons:non_collidable unless block ^ ^ ^1 #magical_addons:non_collidable if block ^ ^ ^-1 #magical_addons:non_collidable run return run function magical_addons:entity/sculk_spider/moves/flip_side_up
execute unless entity @n[type=!#magical_addons:invulnerable,tag=!maddons.sculk_spider,tag=!maddons.invul,dy=-32] if block ~ ~1 ~ #magical_addons:non_collidable if block ~ ~-1 ~ #magical_addons:non_collidable unless block ^ ^ ^-1 #magical_addons:non_collidable if block ^ ^ ^1 #magical_addons:non_collidable run return run function magical_addons:entity/sculk_spider/moves/flip_side_down
function magical_addons:entity/sculk_spider/moves/flip_ground