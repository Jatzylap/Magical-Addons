# entity:sparkstone_golem/spawn_aether
# called by: dimension:the_aether/load_entities

function magical_addons:entity/sparkstone_golem/summon {nbt:{}}

tag @e[type=silverfish,tag=maddons.sparkstone_golem,tag=maddons.vehicle,distance=...5] add maddons.spawned

## Spread
execute as @e[type=silverfish,tag=maddons.spawned] at @s run spreadplayers ~ ~ 0 62 under -40 false @s

tag @e[type=silverfish,tag=maddons.spawned] remove maddons.spawned