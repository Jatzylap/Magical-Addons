# item:sparkstone_potion/drink
# called by advancement : item:use/sparkstone_potion

scoreboard players add @s maddons.mana 50
effect give @s night_vision 5 0
attribute @s movement_speed modifier add magical_addons:hyper_mode 2 add_multiplied_total
function magical_addons:player/mana_meter

advancement revoke @s from magical_addons:---/item/use