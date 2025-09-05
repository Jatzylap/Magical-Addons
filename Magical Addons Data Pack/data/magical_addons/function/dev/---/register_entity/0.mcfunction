$execute unless data storage magical_addons:tick data.entities[{UUID:'$(out)'}] run data modify storage magical_addons:tick data.entities append value {UUID:'$(out)'}
$data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.UUID set value '$(out)'
$execute at @s run data modify storage magical_addons:tick data.entities[{UUID:'$(out)'}].cmd set value '$(tick_cmd)'
$data merge entity @s {data:{magical_addons:{tick_cmd:'$(tick_cmd)',UUID:'$(out)'}}}