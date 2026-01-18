# block:custom/aether_portal/tick
# called by: main:one_second

## Particles
execute if predicate magical_addons:shared/50_percent run particle minecraft:entity_effect{color:[0.0,0.5,0.5,1.0]} ~ ~ ~ 0.2 0 0.2 0 3
execute if block ~ ~ ~ #magical_addons:aether_portal[facing=north] if predicate magical_addons:shared/50_percent run particle minecraft:entity_effect{color:[0.0,0.5,0.5,1.0]} ~ ~ ~-1 0.2 0 0.2 0 3
execute if block ~ ~ ~ #magical_addons:aether_portal[facing=south] if predicate magical_addons:shared/50_percent run particle minecraft:entity_effect{color:[0.0,0.5,0.5,1.0]} ~ ~ ~1 0.2 0 0.2 0 3
execute if block ~ ~ ~ #magical_addons:aether_portal[facing=west] if predicate magical_addons:shared/50_percent run particle minecraft:entity_effect{color:[0.0,0.5,0.5,1.0]} ~-1 ~ ~ 0.2 0 0.2 0 3
execute if block ~ ~ ~ #magical_addons:aether_portal[facing=east] if predicate magical_addons:shared/50_percent run particle minecraft:entity_effect{color:[0.0,0.5,0.5,1.0]} ~1 ~ ~ 0.2 0 0.2 0 3

## Light
execute if block ~ ~ ~ #magical_addons:aether_portal[facing=north] run fill ~-1 ~ ~-2 ~1 ~ ~1 light[level=10] keep
execute if block ~ ~ ~ #magical_addons:aether_portal[facing=south] run fill ~-1 ~ ~-1 ~1 ~ ~2 light[level=10] keep
execute if block ~ ~ ~ #magical_addons:aether_portal[facing=west] run fill ~-2 ~ ~-1 ~1 ~ ~1 light[level=10] keep
execute if block ~ ~ ~ #magical_addons:aether_portal[facing=east] run fill ~-1 ~ ~-1 ~2 ~ ~1 light[level=10] keep