# dimension:overworld/load_chunk
# called by: dimension:overworld/load_chunk/*

$execute unless data storage magical_addons:overworld {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run function magical_addons:dimension/overworld/load_blocks
$execute unless data storage magical_addons:overworld {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run data modify storage magical_addons:overworld data.chunks append value {x:$(x),y:$(y),z:$(z)}
function magical_addons:dimension/overworld/load_entities