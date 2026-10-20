# item:stone_dagger/use
# called by advancement: item:use/stone_dagger

## Offhand use
execute unless score @s maddons.cooldown matches 1.. unless items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"stone_dagger"}}] if items entity @s weapon.offhand *[custom_data~{magical_addons:{id:"stone_dagger"}}] run function magical_addons:item/stone_dagger/use_offhand

## Mainhand use
execute unless score @s maddons.cooldown matches 1.. if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"stone_dagger"}}] run function magical_addons:item/stone_dagger/use_mainhand

## Cooldown
execute unless score @s maddons.cooldown matches 1.. run scoreboard players add @s maddons.cooldown 5

## Reset
advancement revoke @s from magical_addons:---/item/use