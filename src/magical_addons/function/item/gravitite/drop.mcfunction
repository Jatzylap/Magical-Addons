# item:gravitite/drop
# called by advancement : item:drop/gravitite

execute as @n[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_data":{magical_addons:{id:"gravitite"}}}}}] at @s run function magical_addons:item/gravitite/fall_up

advancement revoke @s only magical_addons:---/item/drop/gravitite