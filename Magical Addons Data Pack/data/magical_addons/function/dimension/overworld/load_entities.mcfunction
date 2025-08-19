# dimension:overworld/load_entities
# called by: dimension:overworld/load_chunk

## Sculk spider
execute if biome ~ ~ ~ deep_dark if predicate magical_addons:shared/1_percent run function magical_addons:entity/sculk_spider/spawn