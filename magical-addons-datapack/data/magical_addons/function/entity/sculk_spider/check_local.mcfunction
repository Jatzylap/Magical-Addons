# entity:sculk_spider/check_local
# called by: main:half_second

## Light
execute if block ~ ~ ~ #magical_addons:translucent on vehicle on passengers run data remove entity @s brightness
execute unless block ~ ~ ~ #magical_addons:translucent on vehicle on passengers run function magical_addons:entity/light

## Flags
execute on vehicle on vehicle if data entity @s {NoAI:1b} on passengers on passengers run tag @s[tag=maddons.bone.body] remove maddons.entity.ai
execute on vehicle on vehicle unless data entity @s {NoAI:1b} on passengers on passengers run tag @s[tag=maddons.bone.body] add maddons.entity.ai

## Effects
execute if entity @s[tag=maddons.entity.ai,tag=!maddons.entity.death] run effect give @a[distance=..16,gamemode=!creative,gamemode=!spectator] darkness 6

## Ambient sound
execute if entity @s[tag=maddons.entity.baby,tag=!maddons.entity.silent] if predicate magical_addons:shared/5_percent run playsound entity.spider.ambient hostile @a ~ ~ ~ 1 1.3
execute if entity @s[tag=!maddons.entity.baby,tag=!maddons.entity.silent] if predicate magical_addons:shared/5_percent run playsound entity.spider.ambient hostile @a ~ ~ ~ 1

## Damage
execute if entity @s[tag=maddons.entity.ai,tag=!maddons.entity.death] on vehicle on vehicle anchored eyes positioned ^ ^ ^0.25 run damage @n[tag=!maddons.sculk_spider,type=!#magical_addons:invulnerable,dy=1] 3.0 mob_attack by @s