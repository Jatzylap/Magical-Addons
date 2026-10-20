$forceload add $(x) $(z)
$execute positioned $(x) $(y) $(z) run function magical_addons:dimension/$(dimension)/load_blocks
$execute positioned $(x) $(y) $(z) run function magical_addons:dimension/$(dimension)/load_block_entities {x:$(x),y:$(y),z:$(z)}
$forceload remove $(x) $(z)