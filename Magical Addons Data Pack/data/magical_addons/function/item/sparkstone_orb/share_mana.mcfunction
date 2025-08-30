# item:sparkstone_orb/share_mana
# called by: main:two_seconds

## Add mana to player
scoreboard players add @s maddons.mana 1

## Display mana meter
function magical_addons:player/mana_meter

## Mainhand
execute if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s weapon.mainhand magical_addons:item/damage/sparkstone_orb
execute if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"weapon.mainhand"}

## Offhand
execute if items entity @s weapon.offhand *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s weapon.offhand *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s weapon.offhand magical_addons:item/damage/sparkstone_orb
execute if items entity @s weapon.offhand *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"weapon.offhand"}

## Hotbar 0
execute if items entity @s hotbar.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s hotbar.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s hotbar.0 magical_addons:item/damage/sparkstone_orb
execute if items entity @s hotbar.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"hotbar.0"}

## Hotbar 1
execute if items entity @s hotbar.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s hotbar.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s hotbar.1 magical_addons:item/damage/sparkstone_orb
execute if items entity @s hotbar.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"hotbar.1"}

## Hotbar 2
execute if items entity @s hotbar.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s hotbar.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s hotbar.2 magical_addons:item/damage/sparkstone_orb
execute if items entity @s hotbar.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"hotbar.2"}

## Hotbar 3
execute if items entity @s hotbar.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s hotbar.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s hotbar.3 magical_addons:item/damage/sparkstone_orb
execute if items entity @s hotbar.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"hotbar.3"}

## Hotbar 4
execute if items entity @s hotbar.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s hotbar.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s hotbar.4 magical_addons:item/damage/sparkstone_orb
execute if items entity @s hotbar.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"hotbar.4"}

## Hotbar 5
execute if items entity @s hotbar.5 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s hotbar.5 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s hotbar.5 magical_addons:item/damage/sparkstone_orb
execute if items entity @s hotbar.5 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"hotbar.5"}

## Hotbar 6
execute if items entity @s hotbar.6 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s hotbar.6 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s hotbar.6 magical_addons:item/damage/sparkstone_orb
execute if items entity @s hotbar.6 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"hotbar.6"}

## Hotbar 7
execute if items entity @s hotbar.7 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s hotbar.7 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s hotbar.7 magical_addons:item/damage/sparkstone_orb
execute if items entity @s hotbar.7 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"hotbar.7"}

## Hotbar 8
execute if items entity @s hotbar.8 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s hotbar.8 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s hotbar.8 magical_addons:item/damage/sparkstone_orb
execute if items entity @s hotbar.8 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"hotbar.8"}

## Inventory 0
execute if items entity @s inventory.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.0 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.0"}

## Inventory 1
execute if items entity @s inventory.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.1 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.1"}

## Inventory 2
execute if items entity @s inventory.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.2 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.2"}

## Inventory 3
execute if items entity @s inventory.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.3 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.3"}

## Inventory 4
execute if items entity @s inventory.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.4 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.4"}

## Inventory 5
execute if items entity @s inventory.5 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.5 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.5 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.5 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.5"}

## Inventory 6
execute if items entity @s inventory.6 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.6 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.6 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.6 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.6"}

## Inventory 7
execute if items entity @s inventory.7 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.7 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.7 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.7 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.7"}

## Inventory 8
execute if items entity @s inventory.8 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.8 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.8 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.8 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.8"}

## Inventory 9
execute if items entity @s inventory.9 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.9 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.9 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.9 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.9"}

## Inventory 10
execute if items entity @s inventory.10 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.10 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.10 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.10 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.10"}

## Inventory 11
execute if items entity @s inventory.11 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.11 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.11 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.11 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.11"}

## Inventory 12
execute if items entity @s inventory.12 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.12 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.12 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.12 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.12"}

## Inventory 13
execute if items entity @s inventory.13 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.13 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.13 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.13 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.13"}

## Inventory 14
execute if items entity @s inventory.14 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.14 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.14 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.14 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.14"}

## Inventory 15
execute if items entity @s inventory.15 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.15 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.15 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.15 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.15"}

## Inventory 16
execute if items entity @s inventory.16 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.16 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.16 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.16 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.16"}

## Inventory 17
execute if items entity @s inventory.17 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.17 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.17 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.17 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.17"}

## Inventory 18
execute if items entity @s inventory.18 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.18 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.18 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.18 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.18"}

## Inventory 19
execute if items entity @s inventory.19 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.19 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.19 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.19 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.19"}

## Inventory 20
execute if items entity @s inventory.20 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.20 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.20 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.20 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.20"}

## Inventory 21
execute if items entity @s inventory.21 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.21 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.21 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.21 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.21"}

## Inventory 22
execute if items entity @s inventory.22 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.22 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.22 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.22 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.22"}

## Inventory 23
execute if items entity @s inventory.23 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.23 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.23 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.23 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.23"}

## Inventory 24
execute if items entity @s inventory.24 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.24 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.24 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.24 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.24"}

## Inventory 25
execute if items entity @s inventory.25 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.25 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.25 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.25 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.25"}

## Inventory 26
execute if items entity @s inventory.26 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] unless items entity @s inventory.26 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run item modify entity @s inventory.26 magical_addons:item/damage/sparkstone_orb
execute if items entity @s inventory.26 *[custom_data~{magical_addons:{id:"sparkstone_orb"}},damage=50] run return run function magical_addons:item/sparkstone_orb/break {slot:"inventory.26"}