# block:custom/gravitite_ore/tick
# called by: entity:tick

execute positioned ~ ~.5 ~ if block ~ ~ ~ #magical_addons:non_collidable unless entity @n[type=item_display,tag=maddons.block,tag=maddons.gravitite_ore,distance=...5] run return run tp @s ~ ~ ~

execute on passengers run kill
kill @s
execute positioned ~ ~-.5 ~ align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/gravitite_ore/generate