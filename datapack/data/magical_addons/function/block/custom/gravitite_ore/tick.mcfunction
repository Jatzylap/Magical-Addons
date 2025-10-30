# block:custom/gravitite_ore/tick
# called by: entity:tick

execute positioned ~ ~1 ~ if block ~ ~ ~ #magical_addons:non_collidable run return run data modify entity @s Motion[1] set value 0.5d

execute on passengers run kill
kill
execute align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/gravitite_ore/generate