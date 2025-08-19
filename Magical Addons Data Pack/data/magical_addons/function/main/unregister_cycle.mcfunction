# main:unregister_cycle
# called by: main:one_second

function magical_addons:main/unregister_entity with storage magical_addons:temp data.registry[-1]

data remove storage magical_addons:temp data.registry[-1]

scoreboard players remove #maddons.entity_count maddons.registry 1

execute if score #maddons.entity_count maddons.registry matches 1.. run function magical_addons:main/unregister_cycle