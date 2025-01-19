# dimension:overworld/worldgen/set_chunk_corner
# called by: dimension:overworld/worldgen/start

$execute positioned $(x) $(y) $(z) unless data storage maddons.dimension:overworld {data:{player:{chunks:[{x:$(x),y:$(y),z:$(z)}]}}} run function magical_addons:dimension/overworld/worldgen/new_chunks
$execute unless data storage maddons.dimension:overworld {data:{player:{chunks:[{x:$(x),y:$(y),z:$(z)}]}}} run data modify storage maddons.dimension:overworld data.player.chunks append value {x:$(x),y:$(y),z:$(z)}