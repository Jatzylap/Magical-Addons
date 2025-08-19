# entity:sculk_spider/check_local
# called by: main:half_second

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

## Damage
execute on vehicle as @s[nbt=!{NoAI:1b},nbt={DeathTime:0s}] anchored eyes positioned ^ ^ ^0.25 run damage @n[tag=!maddons.sculk_spider,type=!#magical_addons:invulnerable,distance=..1.5] 3.0 mob_attack by @s

## Rotate Body
execute on vehicle at @s on passengers run rotate @s[tag=maddons.body] ~ 0

## Rotate head
execute if predicate magical_addons:shared/50_percent on vehicle at @s on passengers on passengers run rotate @s[tag=maddons.head] ~ 0
execute if predicate magical_addons:shared/50_percent as @s[tag=!maddons.side_up,tag=!maddons.side_down,tag=!maddons.side_right,tag=!maddons.side_left] on passengers as @s[tag=maddons.head] at @s run rotate @s facing entity @n[type=!#magical_addons:invulnerable,tag=!maddons.sculk_spider,tag=!maddons.invul,distance=..7] eyes

## Drop over players
execute on vehicle if entity @a[dy=-32] run data merge entity @s {NoGravity:0b} 