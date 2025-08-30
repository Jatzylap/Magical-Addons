# block:custom/wizarding_table/raycast
# called by advancement: block:place/wizarding_table

data modify storage bs:data raycast.entities set value 0b
data modify storage bs:data raycast.on_targeted_block set value "execute as @p[advancements={magical_addons:---/block/place/wizarding_table=true}] run function magical_addons:block/custom/wizarding_table/scan"
execute store result storage bs:data raycast.max_distance int 1 run attribute @s minecraft:block_interaction_range get

execute anchored eyes positioned ^ ^ ^ run function bs.raycast:run

advancement revoke @s from magical_addons:---/block/place