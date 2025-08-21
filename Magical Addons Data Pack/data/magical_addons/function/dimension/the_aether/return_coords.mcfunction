# dimension:the_aether/return_coords
# called by : dimension:the_aether/return

## Set new aether portal pos if any
$execute if block ~ ~ ~ white_bed{components:{"minecraft:custom_data":{magical_addons:{id:"aether_portal"}}}} run data modify storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].x set from block ~ ~ ~ x
$execute if block ~ ~ ~ white_bed{components:{"minecraft:custom_data":{magical_addons:{id:"aether_portal"}}}} run data modify storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].y set from block ~ ~ ~ y
$execute if block ~ ~ ~ white_bed{components:{"minecraft:custom_data":{magical_addons:{id:"aether_portal"}}}} run data modify storage magical_addons:data data.aether_portal_pos[{UUID:$(UUID)}].z set from block ~ ~ ~ z

## Get overworld pos
$data modify storage magical_addons:temp data.last_overworld_pos set from storage magical_addons:data data.overworld_portal_pos[{UUID:$(UUID)}]