# block:vanilla/brewing_stand/tick
# called by: main:tick_cycle
# registered by: main:two_seconds

## Potion of Lucidity
execute if data block ~ ~ ~ {BrewTime:0s,Items:[{Slot:0b,components:{"minecraft:potion_contents":{potion:"minecraft:regeneration"}}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].components set value {"minecraft:potion_contents":{"potion":"thick","custom_color":16384255,"custom_name":"lucidity"},"minecraft:hide_additional_tooltip":{},"minecraft:lore":['{"text":"Lucidity (01:00)","color":"blue","italic":false}'],"minecraft:custom_data":{magical_addons:{id:"lucidity_potion"}}}
execute if data block ~ ~ ~ {BrewTime:0s,Items:[{Slot:1b,components:{"minecraft:potion_contents":{potion:"minecraft:regeneration"}}}]} run data modify block ~ ~ ~ Items[{Slot:1b}].components set value {"minecraft:potion_contents":{"potion":"thick","custom_color":16384255,"custom_name":"lucidity"},"minecraft:hide_additional_tooltip":{},"minecraft:lore":['{"text":"Lucidity (01:00)","color":"blue","italic":false}'],"minecraft:custom_data":{magical_addons:{id:"lucidity_potion"}}}
execute if data block ~ ~ ~ {BrewTime:0s,Items:[{Slot:2b,components:{"minecraft:potion_contents":{potion:"minecraft:regeneration"}}}]} run data modify block ~ ~ ~ Items[{Slot:2b}].components set value {"minecraft:potion_contents":{"potion":"thick","custom_color":16384255,"custom_name":"lucidity"},"minecraft:hide_additional_tooltip":{},"minecraft:lore":['{"text":"Lucidity (01:00)","color":"blue","italic":false}'],"minecraft:custom_data":{magical_addons:{id:"lucidity_potion"}}}

execute if data block ~ ~ ~ {BrewTime:0s} run function magical_addons:dev/unregister_entity with block ~ ~ ~ components."minecraft:custom_data"