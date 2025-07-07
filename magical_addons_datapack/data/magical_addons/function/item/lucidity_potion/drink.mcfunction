# item:lucidity_potion/drink
# called by advancement : item:use/lucidity_potion

tag @s add maddons.effect.lucidity
scoreboard players set @s maddons.lucidity 0

advancement revoke @s only magical_addons:---/item/use/lucidity_potion