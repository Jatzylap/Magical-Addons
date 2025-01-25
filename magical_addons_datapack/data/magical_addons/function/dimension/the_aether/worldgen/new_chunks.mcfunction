# dimension:the_aether/worldgen/new_chunks
# called by: dimension:the_aether/worldgen/set_chunk_corner

execute positioned ~-16 ~-16 ~-16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:-16,y:-16,z:-16}
execute positioned ~-16 ~-16 ~ if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:-16,y:-16,z:0}
execute positioned ~-16 ~-16 ~16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:-16,y:-16,z:16}
execute positioned ~-16 ~ ~-16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:-16,y:0,z:-16}
execute positioned ~-16 ~ ~ if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:-16,y:0,z:0}
execute positioned ~-16 ~ ~16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:-16,y:0,z:16}
execute positioned ~-16 ~16 ~-16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:-16,y:16,z:-16}
execute positioned ~-16 ~16 ~ if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:-16,y:16,z:0}
execute positioned ~-16 ~16 ~16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:-16,y:16,z:16}
execute positioned ~ ~-16 ~-16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:0,y:-16,z:-16}
execute positioned ~ ~-16 ~ if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:0,y:-16,z:0}
execute positioned ~ ~-16 ~16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:0,y:-16,z:16}
execute positioned ~ ~ ~-16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:0,y:0,z:-16}
execute positioned ~ ~ ~ if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:0,y:0,z:0}
execute positioned ~ ~ ~16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:0,y:0,z:16}
execute positioned ~ ~16 ~-16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:0,y:16,z:-16}
execute positioned ~ ~16 ~ if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:0,y:16,z:0}
execute positioned ~ ~16 ~16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:0,y:16,z:16}
execute positioned ~16 ~-16 ~-16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:16,y:-16,z:-16}
execute positioned ~16 ~-16 ~ if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:16,y:-16,z:0}
execute positioned ~16 ~-16 ~16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:16,y:-16,z:16}
execute positioned ~16 ~ ~-16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:16,y:0,z:-16}
execute positioned ~16 ~ ~ if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:16,y:0,z:0}
execute positioned ~16 ~ ~16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:16,y:0,z:16}
execute positioned ~16 ~16 ~-16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:16,y:16,z:-16}
execute positioned ~16 ~16 ~ if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:16,y:16,z:0}
execute positioned ~16 ~16 ~16 if loaded ~ ~ ~ run function magical_addons:dimension/the_aether/worldgen/load_chunk {x:16,y:16,z:16}