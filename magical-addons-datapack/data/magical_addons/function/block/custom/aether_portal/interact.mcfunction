# block:custom/aether_portal/interact
# called by advancement: block:interact/aether_portal

## If player is in bed already
execute if predicate magical_addons:shared/night unless dimension minecraft:the_aether if block ~ ~ ~ #magical_addons:aether_portal if entity @n[type=item_display,tag=maddons.aether_portal,distance=...5] run playsound block.portal.trigger block @s ~ ~ ~ 0.5
execute if dimension minecraft:the_aether if block ~ ~ ~ #magical_addons:aether_portal if entity @n[type=item_display,tag=maddons.aether_portal,distance=...5] run playsound block.portal.trigger block @s ~ ~ ~ 0.5

advancement revoke @s from magical_addons:---/block/interact