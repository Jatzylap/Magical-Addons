# effect:clear_hyper_mode
# called by : # effect:hyper_mode

scoreboard players remove @s maddons.mana 1
function magical_addons:player/mana_meter
attribute @s movement_speed modifier remove magical_addons:hyper_mode
tag @s remove maddons.effect.hyper_mode