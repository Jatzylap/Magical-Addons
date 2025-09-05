# block:custom/wizarding_table/interact
# called by: block:custom/wizarding_table/iscan

execute if block ~ ~ ~ brown_shulker_box unless items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run title @s actionbar ["",{"translate":"container.wizarding_table.isLocked","with":[{"translate":"item.magical_addons.wizarding_table"},{"translate":"item.magical_addons.sparkstone_orb"}]}]

## If OFF
execute if block ~ ~ ~ brown_shulker_box if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run stopsound @a block block.chest.locked
execute if block ~ ~ ~ brown_shulker_box if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run title @s actionbar ""
execute if block ~ ~ ~ brown_shulker_box if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] as @n[type=item_display,tag=maddons.wizarding_table,tag=off,tag=!on,distance=...5] run function magical_addons:block/custom/wizarding_table/engage

## If ON
execute if block ~ ~ ~ barrel[open=true] as @n[type=item_display,tag=maddons.wizarding_table,tag=on,tag=!off,distance=...5] run function magical_addons:dev/register_entity {tick_cmd:"function magical_addons:block/custom/wizarding_table/tick"}