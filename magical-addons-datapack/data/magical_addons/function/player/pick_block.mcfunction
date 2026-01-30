# player:pick_block
# called by advancement: player:pick_block

execute if items entity @s weapon.mainhand *[custom_data~{magical_addons:{generated:1b}},!custom_data~{magical_addons:{id:"aether_portal"}}] \
		run item modify entity @s weapon.mainhand magical_addons:block/set_spawner

execute if items entity @s weapon.mainhand *[custom_data~{magical_addons:{generated:1b}}] \
		run item modify entity @s weapon.mainhand magical_addons:block/pick

advancement revoke @s only magical_addons:---/player/pick_block