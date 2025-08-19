# item:sparkstone_lingering_potion/use
# called by advancement : item:use/sparkstone_lingering_potion

## Offhand
execute unless score @s maddons.cooldown matches 1.. unless items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"sparkstone_lingering_potion"}}] if items entity @s weapon.offhand *[custom_data~{magical_addons:{id:"sparkstone_lingering_potion"}}] run function magical_addons:item/sparkstone_lingering_potion/use_offhand

## Mainhand
execute unless score @s maddons.cooldown matches 1.. if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"sparkstone_lingering_potion"}}] run function magical_addons:item/sparkstone_lingering_potion/use_mainhand

## Cooldown
execute unless score @s maddons.cooldown matches 1.. run scoreboard players add @s maddons.cooldown 6

## Reset
advancement revoke @s from magical_addons:---/item/use