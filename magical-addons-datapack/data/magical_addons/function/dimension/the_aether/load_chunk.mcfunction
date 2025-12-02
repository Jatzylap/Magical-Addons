# dimension:the_aether/load_chunk
# called by: dimension:the_aether/load_chunk/*

$execute unless data storage magical_addons:the_aether {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run function magical_addons:dimension/the_aether/load_blocks
#$execute unless data storage magical_addons:the_aether {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run function magical_addons:dimension/the_aether/load_block_entities {x:$(x),y:$(y),z:$(z)}
$execute unless data storage magical_addons:the_aether {data:{chunks:[{x:$(x),y:$(y),z:$(z)}]}} run data modify storage magical_addons:the_aether data.chunks append value {x:$(x),y:$(y),z:$(z)}

execute store success score #maddons.entity.load maddons.temp run gamerule spawn_mobs
execute if score #maddons.entity.load maddons.temp matches 1 run function magical_addons:dimension/the_aether/load_entities