# block:custom/wizarding_table/interact
# called by: block:interact

## Off
stopsound @p[advancements={magical_addons:---/block/interact/wizarding_table_off=true},nbt={SelectedItem:{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone_orb"}}}}}] block block.chest.locked
title @p[advancements={magical_addons:---/block/interact/wizarding_table_off=true},nbt={SelectedItem:{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone_orb"}}}}}] actionbar ""
execute if entity @p[advancements={magical_addons:---/block/interact/wizarding_table_off=true},nbt={SelectedItem:{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone_orb"}}}}}] as @s[tag=maddons.wizarding_table,tag=off,tag=!on] run function magical_addons:block/custom/wizarding_table/engage

## On + Open
execute if entity @p[advancements={magical_addons:---/block/interact/wizarding_table_on=true}] as @s[tag=maddons.wizarding_table,tag=on,tag=!off] if block ~ ~ ~ barrel[open=true] run function magical_addons:dev/register_entity {cmd:"function magical_addons:block/custom/wizarding_table/tick"}