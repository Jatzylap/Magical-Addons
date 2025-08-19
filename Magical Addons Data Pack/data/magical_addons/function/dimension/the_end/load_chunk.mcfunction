# dimension:the_end/load_chunk
# called by: dimension:the_end/load_chunk/*

$execute unless data storage magical_addons:the_end {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run function magical_addons:dimension/the_end/load_blocks
$execute unless data storage magical_addons:the_end {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run return run data modify storage magical_addons:the_end data.chunks append value {x:$(x),y:$(y),z:$(z)}
function magical_addons:dimension/the_end/load_entities