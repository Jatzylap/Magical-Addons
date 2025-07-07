# dimension:overworld/worldgen/load_chunk
# called by: dimension:overworld/worldgen/load_chunk/*

$execute unless data storage magical_addons:overworld {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run function magical_addons:dimension/overworld/worldgen/set_blocks
$execute unless data storage magical_addons:overworld {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run data modify storage magical_addons:overworld data.chunks append value {x:$(x),y:$(y),z:$(z)}