# dimension:the_end/worldgen/load_chunk
# called by: dimension:the_end/worldgen/load_chunk/*

$execute unless data storage maddons.dimension:the_end {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run function magical_addons:dimension/the_end/worldgen/set_blocks
$execute unless data storage maddons.dimension:the_end {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run data modify storage maddons.dimension:the_end data.chunks append value {x:$(x),y:$(y),z:$(z)}