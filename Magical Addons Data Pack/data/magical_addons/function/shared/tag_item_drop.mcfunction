# shared:tag_item_drop
# called by: player:loop

data modify entity @s[nbt={Item:{components:{"minecraft:custom_data":{maddons.id:"trident_of_poseidon"}}}}] Item.components merge value {"custom_model_data":14,"custom_data":{maddons.drop_item:1}}