$execute if dimension $(dimension) run data remove storage magical_addons:$(dimension) data.chunks[{x:$(x),y:$(y),z:$(z)}]

$execute positioned $(x) $(y) $(z) run function magical_addons:dimension/$(dimension)/worldgen/set_blocks