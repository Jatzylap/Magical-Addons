# item:golden_oak_sapling/use
# called by advancement: item:use/golden_oak_sapling

data modify storage bs:data raycast.entities set value 0b
data modify storage bs:data raycast.on_targeted_block set value "execute as @p[advancements={magical_addons:---/item/use/golden_oak_sapling=true}] if block ~ ~ ~ flower_pot align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/potted_golden_oak_sapling/place"
execute store result storage bs:data raycast.max_distance int 2 run attribute @s minecraft:block_interaction_range get

execute anchored eyes positioned ^ ^ ^ run function bs.raycast:run

advancement revoke @s from magical_addons:---/item/use