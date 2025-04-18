# effect:clear_hyper_mode
# called by : # effect:hyper_mode

scoreboard players remove @s maddons.mana 1
function magical_addons:player/event/mana_meter
attribute @s movement_speed modifier remove maddons.hyper_mode
tag @s remove maddons.effect.hyper_mode