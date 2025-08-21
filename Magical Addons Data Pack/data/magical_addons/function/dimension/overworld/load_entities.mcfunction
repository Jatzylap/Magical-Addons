# dimension:overworld/load_entities
# called by: dimension:overworld/load_chunk

## Sculk spider
execute if predicate magical_addons:shared/1_percent positioned over world_surface if biome ~ ~ ~ deep_dark if block ~ ~-1 ~ #magical_addons:valid_spawn run function magical_addons:entity/sculk_spider/spawn