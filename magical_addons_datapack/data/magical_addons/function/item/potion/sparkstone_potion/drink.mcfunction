# item:sparkstone_potion/drink
# called by advancement : item:use/sparkstone_potion

tag @s[tag=!maddons.aa] add maddons.effect.hyper_mode
scoreboard players add @s maddons.mana 50
function magical_addons:player/event/mana_meter

advancement revoke @s only magical_addons:---/item/use/sparkstone_potion