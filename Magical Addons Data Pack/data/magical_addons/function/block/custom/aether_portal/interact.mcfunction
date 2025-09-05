# block:custom/aether_portal/interact
# called by advancement: block:interact/aether_portal

## If player is in bed already
execute if predicate magical_addons:shared/night unless dimension the_aether if block ~ ~ ~ white_bed{components:{"minecraft:custom_data":{magical_addons:{id:"aether_portal"}}}} run playsound block.portal.trigger block @s ~ ~ ~ 0.5
execute if dimension the_aether if block ~ ~ ~ white_bed{components:{"minecraft:custom_data":{magical_addons:{id:"aether_portal"}}}} run playsound block.portal.trigger block @s ~ ~ ~ 0.5

advancement revoke @s from magical_addons:---/block/interact