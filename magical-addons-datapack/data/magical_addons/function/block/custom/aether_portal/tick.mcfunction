# block:custom/aether_portal/tick
# called by: main:one_second

## Particles
execute if predicate magical_addons:shared/50_percent run particle minecraft:entity_effect{color:[0.0,0.5,0.5,1.0]} ~ ~ ~ 0.2 0 0.2 0 3
execute if block ~ ~ ~ white_bed[facing=north] if predicate magical_addons:shared/50_percent run particle minecraft:entity_effect{color:[0.0,0.5,0.5,1.0]} ~ ~ ~-1 0.2 0 0.2 0 3
execute if block ~ ~ ~ white_bed[facing=south] if predicate magical_addons:shared/50_percent run particle minecraft:entity_effect{color:[0.0,0.5,0.5,1.0]} ~ ~ ~1 0.2 0 0.2 0 3
execute if block ~ ~ ~ white_bed[facing=west] if predicate magical_addons:shared/50_percent run particle minecraft:entity_effect{color:[0.0,0.5,0.5,1.0]} ~-1 ~ ~ 0.2 0 0.2 0 3
execute if block ~ ~ ~ white_bed[facing=east] if predicate magical_addons:shared/50_percent run particle minecraft:entity_effect{color:[0.0,0.5,0.5,1.0]} ~1 ~ ~ 0.2 0 0.2 0 3

## Light
execute if block ~ ~ ~ white_bed[facing=north] run fill ~-1 ~ ~-2 ~1 ~1 ~1 light[level=15] keep
execute if block ~ ~ ~ white_bed[facing=south] run fill ~-1 ~ ~-1 ~1 ~1 ~2 light[level=15] keep
execute if block ~ ~ ~ white_bed[facing=west] run fill ~-2 ~ ~-1 ~1 ~1 ~1 light[level=15] keep
execute if block ~ ~ ~ white_bed[facing=east] run fill ~-1 ~ ~-1 ~2 ~1 ~1 light[level=15] keep