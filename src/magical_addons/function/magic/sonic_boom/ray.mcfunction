# magic:sonic_boom/ray
# called by: magic:sonic_boom/start

## Particle
particle sonic_boom ~ ~ ~ 0.2 0.2 0.2 0 1

## Hit entity
execute positioned ~-0.05 ~-0.05 ~-0.05 as @n[type=!#magical_addons:invulnerable,tag=!maddons.spell.caster,dx=0] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function magical_addons:magic/sonic_boom/hit_entity

## Distance
scoreboard players add #maddons.magic.sonic_boom maddons.move 1

## Recurse
execute if score #maddons.magic.sonic_boom maddons.move matches ..99 positioned ^ ^ ^1 run function magical_addons:magic/sonic_boom/ray