# block:custom/wizarding_table/gui/restore/8b
# called by: block:custom/wizarding_table/restore

execute if data block ~ ~ ~ Items[{Slot:8b}] run loot spawn ~ ~ ~ loot magical_addons:empty
data modify entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{empty:1}}}}}] Item set from block ~ ~ ~ Items[{Slot:8b}]