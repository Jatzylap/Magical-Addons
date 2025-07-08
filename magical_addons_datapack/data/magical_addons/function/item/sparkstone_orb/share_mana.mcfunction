# item:sparkstone_orb/share_mana
# called by: main:two_seconds

## Add mana to player
scoreboard players add @s maddons.mana 1

## Display mana meter
function magical_addons:player/event/mana_meter

## Mainhand
execute if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s weapon.mainhand magical_addons:item/damage/sparkstone_orb

## Offhand
execute if items entity @s weapon.offhand *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s weapon.offhand magical_addons:item/damage/sparkstone_orb

## Hotbar 0
execute if items entity @s hotbar.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s hotbar.0 magical_addons:item/damage/sparkstone_orb

## Hotbar 1
execute if items entity @s hotbar.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s hotbar.1 magical_addons:item/damage/sparkstone_orb

## Hotbar 2
execute if items entity @s hotbar.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s hotbar.2 magical_addons:item/damage/sparkstone_orb

## Hotbar 3
execute if items entity @s hotbar.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s hotbar.3 magical_addons:item/damage/sparkstone_orb

## Hotbar 4
execute if items entity @s hotbar.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s hotbar.4 magical_addons:item/damage/sparkstone_orb

## Hotbar 5
execute if items entity @s hotbar.5 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s hotbar.5 magical_addons:item/damage/sparkstone_orb

## Hotbar 6
execute if items entity @s hotbar.6 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s hotbar.6 magical_addons:item/damage/sparkstone_orb

## Hotbar 7
execute if items entity @s hotbar.7 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s hotbar.7 magical_addons:item/damage/sparkstone_orb

## Hotbar 8
execute if items entity @s hotbar.8 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s hotbar.8 magical_addons:item/damage/sparkstone_orb

## Inventory 0
execute if items entity @s inventory.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.0 magical_addons:item/damage/sparkstone_orb

## Inventory 1
execute if items entity @s inventory.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.1 magical_addons:item/damage/sparkstone_orb

## Inventory 2
execute if items entity @s inventory.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.2 magical_addons:item/damage/sparkstone_orb

## Inventory 3
execute if items entity @s inventory.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.3 magical_addons:item/damage/sparkstone_orb

## Inventory 4
execute if items entity @s inventory.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.4 magical_addons:item/damage/sparkstone_orb

## Inventory 5
execute if items entity @s inventory.5 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.5 magical_addons:item/damage/sparkstone_orb

## Inventory 6
execute if items entity @s inventory.6 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.6 magical_addons:item/damage/sparkstone_orb

## Inventory 7
execute if items entity @s inventory.7 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.7 magical_addons:item/damage/sparkstone_orb

## Inventory 8
execute if items entity @s inventory.8 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.8 magical_addons:item/damage/sparkstone_orb

## Inventory 9
execute if items entity @s inventory.9 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.9 magical_addons:item/damage/sparkstone_orb

## Inventory 10
execute if items entity @s inventory.10 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.10 magical_addons:item/damage/sparkstone_orb

## Inventory 11
execute if items entity @s inventory.11 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.11 magical_addons:item/damage/sparkstone_orb

## Inventory 12
execute if items entity @s inventory.12 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.12 magical_addons:item/damage/sparkstone_orb

## Inventory 13
execute if items entity @s inventory.13 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.13 magical_addons:item/damage/sparkstone_orb

## Inventory 14
execute if items entity @s inventory.14 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.14 magical_addons:item/damage/sparkstone_orb

## Inventory 15
execute if items entity @s inventory.15 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.15 magical_addons:item/damage/sparkstone_orb

## Inventory 16
execute if items entity @s inventory.16 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.16 magical_addons:item/damage/sparkstone_orb

## Inventory 17
execute if items entity @s inventory.17 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.17 magical_addons:item/damage/sparkstone_orb

## Inventory 18
execute if items entity @s inventory.18 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.18 magical_addons:item/damage/sparkstone_orb

## Inventory 19
execute if items entity @s inventory.19 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.19 magical_addons:item/damage/sparkstone_orb

## Inventory 20
execute if items entity @s inventory.20 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.20 magical_addons:item/damage/sparkstone_orb

## Inventory 21
execute if items entity @s inventory.21 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.21 magical_addons:item/damage/sparkstone_orb

## Inventory 22
execute if items entity @s inventory.22 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.22 magical_addons:item/damage/sparkstone_orb

## Inventory 23
execute if items entity @s inventory.23 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.23 magical_addons:item/damage/sparkstone_orb

## Inventory 24
execute if items entity @s inventory.24 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.24 magical_addons:item/damage/sparkstone_orb

## Inventory 25
execute if items entity @s inventory.25 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.25 magical_addons:item/damage/sparkstone_orb

## Inventory 26
execute if items entity @s inventory.26 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item modify entity @s inventory.26 magical_addons:item/damage/sparkstone_orb