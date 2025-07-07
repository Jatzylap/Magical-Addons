# dimension:overworld/worldgen/set_chunk_corner
# called by: dimension:overworld/worldgen/start

$execute if loaded $(x) $(y) $(z) positioned $(x) $(y) $(z) unless data storage magical_addons:overworld {data:{player:{chunks:[{x:$(x),y:$(y),z:$(z)}]}}} run function magical_addons:dimension/overworld/worldgen/new_chunks
$execute if loaded $(x) $(y) $(z) unless data storage magical_addons:overworld {data:{player:{chunks:[{x:$(x),y:$(y),z:$(z)}]}}} run data modify storage magical_addons:overworld data.player.chunks append value {x:$(x),y:$(y),z:$(z)}