# dungeon:aether_portal/destroy/as_player
# called by advancement: dungeon:destroy_aether_portal

execute at @n[type=interaction,tag=maddons.aether_portal,nbt={attack:{}}] as @n[type=item_display,tag=maddons.aether_portal,distance=...5] run function magical_addons:dungeon/aether_portal/destroy with entity @s item.components."minecraft:custom_data".portal
advancement revoke @s only magical_addons:---/dungeon/destroy_aether_portal