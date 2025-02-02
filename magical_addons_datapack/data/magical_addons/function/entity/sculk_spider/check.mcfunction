# entity:sculk_spider/check
# called by: entity:sculk_spider/one_second

## Despawn
execute at @s unless predicate magical_addons:shared/riding_vehicle run return run function magical_addons:entity/kill

## Effects
effect give @a[distance=..16,gamemode=!creative,gamemode=!spectator] darkness 6
execute on vehicle run data merge entity @s {Fire:-1}
data merge entity @s {Fire:-1}
execute on passengers run data merge entity @s {Fire:-1}

## Transforms
execute on vehicle unless block ~ ~.5 ~ #magical_addons:non_collidable if block ~ ~-.5 ~ #magical_addons:non_collidable on passengers as @s[tag=maddons.entity] at @s run function magical_addons:entity/sculk_spider/moves/crawl/ceiling
execute on vehicle unless block ^.6 ^ ^ #magical_addons:non_collidable if block ^-.6 ^ ^ #magical_addons:non_collidable if block ^ ^ ^1 #magical_addons:non_collidable if block ^ ^ ^-1 #magical_addons:non_collidable on passengers as @s[tag=maddons.entity] at @s run function magical_addons:entity/sculk_spider/moves/crawl/side_left
execute on vehicle unless block ^-.6 ^ ^ #magical_addons:non_collidable if block ^.6 ^ ^ #magical_addons:non_collidable if block ^ ^ ^1 #magical_addons:non_collidable if block ^ ^ ^-1 #magical_addons:non_collidable on passengers as @s[tag=maddons.entity] at @s run function magical_addons:entity/sculk_spider/moves/crawl/side_right
execute on vehicle if block ~ ~.5 ~ #magical_addons:non_collidable if block ~ ~-.5 ~ #magical_addons:non_collidable unless block ^ ^ ^1 #magical_addons:non_collidable if block ^ ^ ^-1 #magical_addons:non_collidable on passengers as @s[tag=maddons.entity] at @s run function magical_addons:entity/sculk_spider/moves/crawl/side_up
execute on vehicle if block ~ ~.5 ~ #magical_addons:non_collidable if block ~ ~-.5 ~ #magical_addons:non_collidable unless block ^ ^ ^-1 #magical_addons:non_collidable if block ^ ^ ^1 #magical_addons:non_collidable on passengers as @s[tag=maddons.entity] at @s run function magical_addons:entity/sculk_spider/moves/crawl/side_down
execute on vehicle if block ~ ~.5 ~ #magical_addons:non_collidable unless block ~ ~-.5 ~ #magical_addons:non_collidable on passengers as @s[tag=maddons.entity] at @s run function magical_addons:entity/sculk_spider/moves/crawl/ground
execute on vehicle if block ~ ~.5 ~ #magical_addons:non_collidable if block ~ ~-.5 ~ #magical_addons:non_collidable if block ^ ^ ^1 #magical_addons:non_collidable if block ^ ^ ^-1 #magical_addons:non_collidable if block ^1 ^ ^ #magical_addons:non_collidable if block ^-1 ^ ^ #magical_addons:non_collidable on passengers as @s[tag=maddons.entity] at @s run function magical_addons:entity/sculk_spider/moves/crawl/ground
execute on vehicle if entity @a[dy=-15] on passengers as @s[tag=maddons.entity] at @s run function magical_addons:entity/sculk_spider/moves/fall