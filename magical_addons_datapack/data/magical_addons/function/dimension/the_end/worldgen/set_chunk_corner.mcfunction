# dimension:the_end/worldgen/set_chunk_corner
# called by: dimension:the_end/worldgen/start

$execute positioned $(x) $(y) $(z) unless data storage maddons.dimension:the_end {data:{player:{chunks:[{x:$(x),y:$(y),z:$(z)}]}}} run function magical_addons:dimension/the_end/worldgen/new_chunks
$execute unless data storage maddons.dimension:the_end {data:{player:{chunks:[{x:$(x),y:$(y),z:$(z)}]}}} run data modify storage maddons.dimension:the_end data.player.chunks append value {x:$(x),y:$(y),z:$(z)}