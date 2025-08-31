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

## Rotate Head
execute on vehicle at @s on passengers on passengers run rotate @s[tag=maddons.head] facing entity @p[tag=!maddons.invul,gamemode=!creative,gamemode=!spectator,distance=..16] eyes
execute on passengers as @s[tag=maddons.head] store result entity @s data.magical_addons.rotation_y float 1 run data get entity @s Rotation[1]

## Drop over players
execute on vehicle if entity @a[dy=-32] run data merge entity @s {NoGravity:0b} 