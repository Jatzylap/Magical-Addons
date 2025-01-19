# dungeon:ancient_portal/destroy/as_player
# called by advancement: dungeon:destroy_ancient_portal

execute at @n[type=interaction,tag=maddons.ancient_portal,nbt={attack:{}}] as @n[type=item_display,tag=maddons.ancient_portal,distance=...5] run function magical_addons:dungeon/ancient_portal/destroy with entity @s item.components."minecraft:custom_data".portal
advancement revoke @s only magical_addons:---/dungeon/destroy_ancient_portal