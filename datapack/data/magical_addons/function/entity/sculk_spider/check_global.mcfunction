# entity:sculk_spider/check_global
# called by: main:one_second

## Death
execute if entity @s[tag=maddons.entity.death] run return 0

## Despawning
execute on vehicle unless predicate magical_addons:shared/riding_vehicle run return run function magical_addons:entity/sculk_spider/despawn

## Reset flip
#execute if entity @s[tag=maddons.flip] run function magical_addons:entity/sculk_spider/flip

## Flip
#execute on vehicle on vehicle unless block ~ ~.5 ~ #magical_addons:non_collidable if block ~ ~-.5 ~ #magical_addons:non_collidable on passengers as @s[tag=maddons.entity.ai] at @s run return run function magical_addons:entity/sculk_spider/moves/flip_ceiling
#execute on vehicle on vehicle unless block ^.6 ^ ^ #magical_addons:non_collidable if block ^-.6 ^ ^ #magical_addons:non_collidable if block ^ ^ ^1 #magical_addons:non_collidable if block ^ ^ ^-1 #magical_addons:non_collidable on passengers as @s[tag=maddons.entity.ai] at @s run return run function magical_addons:entity/sculk_spider/moves/flip_side_left
#execute on vehicle on vehicle unless block ^-.6 ^ ^ #magical_addons:non_collidable if block ^.6 ^ ^ #magical_addons:non_collidable if block ^ ^ ^1 #magical_addons:non_collidable if block ^ ^ ^-1 #magical_addons:non_collidable on passengers as @s[tag=maddons.entity.ai] at @s run return run function magical_addons:entity/sculk_spider/moves/flip_side_right
#execute on vehicle on vehicle if block ~ ~.5 ~ #magical_addons:non_collidable if block ~ ~-.5 ~ #magical_addons:non_collidable unless block ^ ^ ^1 #magical_addons:non_collidable if block ^ ^ ^-1 #magical_addons:non_collidable on passengers as @s[tag=maddons.entity.ai] at @s run return run function magical_addons:entity/sculk_spider/moves/flip_side_up
#execute on vehicle on vehicle if block ~ ~.5 ~ #magical_addons:non_collidable if block ~ ~-.5 ~ #magical_addons:non_collidable unless block ^ ^ ^-1 #magical_addons:non_collidable if block ^ ^ ^1 #magical_addons:non_collidable on passengers as @s[tag=maddons.entity.ai] at @s run return run function magical_addons:entity/sculk_spider/moves/flip_side_down
#function magical_addons:entity/sculk_spider/moves/flip_ground