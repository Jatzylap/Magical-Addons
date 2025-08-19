# dimension:the_aether/test_return
# called by advancement : dimension:aether_return_bed

advancement revoke @s only magical_addons:---/dimension/aether_return_bed

execute if entity @n[distance=...5,type=item_display,tag=maddons.aether_portal] run time set 0
execute if entity @n[distance=...5,type=item_display,tag=maddons.aether_portal] run function magical_addons:dimension/the_aether/return
execute if entity @n[distance=...5,type=item_display,tag=maddons.aether_portal] at @s run playsound magical_addons:block.portal.travel ambient @s ~ ~ ~ 0.5
