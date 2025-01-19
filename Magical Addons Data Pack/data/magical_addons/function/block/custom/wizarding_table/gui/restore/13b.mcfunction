# block:custom/wizarding_table/gui/restore/13b
# called by: block:custom/wizarding_table/restore

execute if data block ~ ~ ~ Items[{Slot:13b}] run loot spawn ~ ~ ~ loot magical_addons:items/empty
data modify entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{empty:1}}}}}] Item set from block ~ ~ ~ Items[{Slot:13b}]