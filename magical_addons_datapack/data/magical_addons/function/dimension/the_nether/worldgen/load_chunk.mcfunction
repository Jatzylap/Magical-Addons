# dimension:the_nether/worldgen/load_chunk
# called by: dimension:the_nether/worldgen/load_chunk/*

$execute unless data storage maddons.dimension:the_nether {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run function magical_addons:dimension/the_nether/worldgen/set_blocks
$execute unless data storage maddons.dimension:the_nether {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run data modify storage maddons.dimension:the_nether data.chunks append value {x:$(x),y:$(y),z:$(z)}