$execute unless data storage magical_addons:registry data.entities[{UUID:'$(out)'}] run data modify storage magical_addons:registry data.entities append value {UUID:'$(out)'}
$data modify block ~ ~ ~ components."minecraft:custom_data".UUID set value '$(out)'
$data modify entity @s item.components."minecraft:custom_data".UUID set value '$(out)'
$execute at @s run data modify storage magical_addons:registry data.entities[{UUID:'$(out)'}].cmd set value '$(cmd)'
$data merge entity @s {data:{magical_addons:{cmd:'$(cmd)',UUID:'$(out)'}}}
