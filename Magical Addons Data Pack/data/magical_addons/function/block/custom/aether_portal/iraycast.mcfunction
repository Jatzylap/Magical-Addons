# block:custom/aether_portal/iraycast
# called by advancement: block:interact/aether_portal

data modify storage bs:data raycast.entities set value 0b
data modify storage bs:data raycast.on_targeted_block set value "execute as @p[advancements={magical_addons:---/block/interact/aether_portal=true}] run function magical_addons:block/custom/aether_portal/iscan"
execute store result storage bs:data raycast.max_distance int 1 run attribute @s minecraft:block_interaction_range get

execute anchored eyes positioned ^ ^ ^ run function bs.raycast:run

advancement revoke @s from magical_addons:---/block/interact

## If player is in bed already
execute if predicate magical_addons:shared/night unless dimension the_aether if block ~ ~ ~ white_bed{components:{"minecraft:custom_data":{magical_addons:{id:"aether_portal"}}}} run playsound block.portal.trigger block @s ~ ~ ~ 0.5
execute if dimension the_aether if block ~ ~ ~ white_bed{components:{"minecraft:custom_data":{magical_addons:{id:"aether_portal"}}}} run playsound block.portal.trigger block @s ~ ~ ~ 0.5