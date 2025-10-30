# dimension:the_aether/test_enter
# called by advancement : dimension:enter_the_aether

advancement revoke @s only magical_addons:---/dimension/enter_the_aether

execute if entity @n[distance=...5,type=item_display,tag=maddons.aether_portal] run time set 0
execute if entity @n[distance=...5,type=item_display,tag=maddons.aether_portal] run function magical_addons:dimension/the_aether/enter
