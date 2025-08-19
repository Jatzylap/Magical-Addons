# item:sparkstone_potion/drink
# called by advancement : item:use/sparkstone_potion

scoreboard players add @s maddons.mana 50
function magical_addons:player/event/mana_meter

advancement revoke @s from magical_addons:---/item/use