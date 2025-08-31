# block:vanilla/cobblestone_slab/raycast
# called by advancement: block:place/cobblestone_slab

data modify storage bs:data raycast.entities set value 0b
data modify storage bs:data raycast.on_targeted_block set value "execute as @p[advancements={magical_addons:---/block/place/cobblestone_slab=true}] run function magical_addons:block/vanilla/cobblestone_slab/scan"
execute store result storage bs:data raycast.max_distance int 1 run attribute @s minecraft:block_interaction_range get

execute anchored eyes positioned ^ ^ ^ run function bs.raycast:run

advancement revoke @s from magical_addons:---/block/place