# player:pick_block
# called by advancement: player:pick_block

execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{magical_addons:{generated:1b}}}}} run item modify entity @s weapon.mainhand magical_addons:block/pick

advancement revoke @s only magical_addons:---/player/pick_block