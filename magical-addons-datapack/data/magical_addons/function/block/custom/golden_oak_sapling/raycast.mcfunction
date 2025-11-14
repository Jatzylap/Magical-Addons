# block:custom/golden_oak_sapling/raycast
# called by advancement: block:place/golden_oak_sapling

data modify storage bs:data raycast.entities set value 0b
data modify storage bs:data raycast.on_targeted_block set value "execute as @p[advancements={magical_addons:---/block/place/golden_oak_sapling=true}] run function magical_addons:block/custom/golden_oak_sapling/scan"
execute store result storage bs:data raycast.max_distance int 2 run attribute @s minecraft:block_interaction_range get

execute anchored eyes positioned ^ ^ ^ run function bs.raycast:run

advancement revoke @s from magical_addons:---/block/place