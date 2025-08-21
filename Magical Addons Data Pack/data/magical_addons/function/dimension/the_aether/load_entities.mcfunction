# dimension:the_aether/load_entities
# called by: dimension:the_aether/load_chunk

## Breeze
execute if predicate magical_addons:shared/1_percent positioned over world_surface if biome ~ ~ ~ magical_addons:sky_plains if block ~ ~-1 ~ #magical_addons:valid_spawn run summon breeze

## Sculk spider
execute if predicate magical_addons:shared/1_percent if predicate magical_addons:block/light/0 if block ~ ~ ~ #magical_addons:non_collidable if biome ~ ~ ~ magical_addons:sky_plains if block ~ ~-1 ~ #magical_addons:valid_spawn run function magical_addons:entity/sculk_spider/spawn