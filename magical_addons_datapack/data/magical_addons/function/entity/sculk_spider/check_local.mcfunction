# entity:sculk_spider/check_local
# called by: main:one_second

## Light
execute if block ~ ~ ~ #magical_addons:translucent run data remove entity @s brightness
execute if block ~ ~ ~ #magical_addons:translucent on passengers run data remove entity @s brightness
execute unless block ~ ~ ~ #magical_addons:translucent run function magical_addons:entity/light
execute on passengers as @s[tag=maddons.head] unless block ~ ~ ~ #magical_addons:translucent run function magical_addons:entity/light

## Effects
effect give @a[distance=..16,gamemode=!creative,gamemode=!spectator] darkness 6

## Ambient sound
execute on vehicle if entity @s[tag=maddons.baby,tag=!maddons.silent] if predicate magical_addons:shared/5_percent run playsound entity.spider.ambient hostile @a ~ ~ ~ 1 1.3
execute on vehicle if entity @s[tag=!maddons.baby,tag=!maddons.silent] if predicate magical_addons:shared/5_percent run playsound entity.spider.ambient hostile @a ~ ~ ~ 1

## Reset flip
execute if entity @s[tag=maddons.flip] run function magical_addons:entity/sculk_spider/flip

## Damage
execute on vehicle as @s[nbt=!{NoAI:1b},nbt={DeathTime:0s}] anchored eyes positioned ^ ^ ^ run damage @n[tag=!maddons.sculk_spider,type=!#magical_addons:invulnerable,distance=..2.5] 2.5 mob_attack by @s

## Flip
execute on vehicle if entity @a[dy=-15] on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/sculk_spider/moves/flip_ground
execute on vehicle unless block ~ ~.5 ~ #magical_addons:non_collidable if block ~ ~-.5 ~ #magical_addons:non_collidable on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/sculk_spider/moves/flip_ceiling
execute on vehicle unless block ^.6 ^ ^ #magical_addons:non_collidable if block ^-.6 ^ ^ #magical_addons:non_collidable if block ^ ^ ^1 #magical_addons:non_collidable if block ^ ^ ^-1 #magical_addons:non_collidable on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/sculk_spider/moves/flip_side_left
execute on vehicle unless block ^-.6 ^ ^ #magical_addons:non_collidable if block ^.6 ^ ^ #magical_addons:non_collidable if block ^ ^ ^1 #magical_addons:non_collidable if block ^ ^ ^-1 #magical_addons:non_collidable on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/sculk_spider/moves/flip_side_right
execute on vehicle if block ~ ~.5 ~ #magical_addons:non_collidable if block ~ ~-.5 ~ #magical_addons:non_collidable unless block ^ ^ ^1 #magical_addons:non_collidable if block ^ ^ ^-1 #magical_addons:non_collidable on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/sculk_spider/moves/flip_side_up
execute on vehicle if block ~ ~.5 ~ #magical_addons:non_collidable if block ~ ~-.5 ~ #magical_addons:non_collidable unless block ^ ^ ^-1 #magical_addons:non_collidable if block ^ ^ ^1 #magical_addons:non_collidable on passengers as @s[tag=maddons.entity] at @s run return run function magical_addons:entity/sculk_spider/moves/flip_side_down
function magical_addons:entity/sculk_spider/moves/flip_ground