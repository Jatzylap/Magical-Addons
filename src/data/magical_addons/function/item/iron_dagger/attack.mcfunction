# item:iron_dagger/attack
# called by advancement: item:attack/iron_dagger

## Mainhand
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{magical_addons:{id:"iron_dagger"}}}}} run function magical_addons:item/iron_dagger/attack_mainhand with entity @s SelectedItem.components."minecraft:custom_data".magical_addons

## Reset
advancement revoke @s from magical_addons:---/item/attack