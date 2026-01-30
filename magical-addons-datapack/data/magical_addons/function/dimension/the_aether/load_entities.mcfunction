# dimension:the_aether/load_entities
# called by: dimension:the_aether/load_chunk

## Breeze
execute if predicate magical_addons:shared/1_percent if predicate magical_addons:shared/night positioned over world_surface unless biome ~ ~ ~ magical_addons:cities if block ~ ~-1 ~ #magical_addons:valid_spawn run summon breeze