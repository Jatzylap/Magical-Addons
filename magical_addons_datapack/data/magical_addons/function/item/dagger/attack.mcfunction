# item:dagger/attack
# called by advancement: item:attack/dagger

## Mainhand
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{magical_addons:{dagger:1}}}}} run function magical_addons:item/dagger/attack_mainhand with entity @s SelectedItem.components."minecraft:custom_data".magical_addons

## Reset
advancement revoke @s from magical_addons:---/item/attack