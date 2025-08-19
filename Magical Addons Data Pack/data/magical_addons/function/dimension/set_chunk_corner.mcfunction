# dimension:set_chunk_corner
# called by: player:loop

$execute in $(id) if loaded $(x) $(y) $(z) positioned $(x) $(y) $(z) unless data storage magical_addons:data {data:{player_chunks:[{UUID:$(UUID),x:$(x),y:$(y),z:$(z)}]}} run function magical_addons:dimension/$(id)/new_chunks
$execute in $(id) if loaded $(x) $(y) $(z) unless data storage magical_addons:data {data:{player_chunks:[{UUID:$(UUID),x:$(x),y:$(y),z:$(z)}]}} run data modify storage magical_addons:data data.player_chunks[{UUID:$(UUID)}] merge value {x:$(x),y:$(y),z:$(z)}