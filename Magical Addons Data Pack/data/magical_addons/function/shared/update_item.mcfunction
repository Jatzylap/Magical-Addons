# shared:update_item
# called by advancement: shared:update_item

execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{maddons.item_update:"1",maddons.id:"trident_of_poseidon"}}}]}] run function magical_addons:player/trident_of_poseidon/replace

advancement revoke @s only magical_addons:---/shared/update_item