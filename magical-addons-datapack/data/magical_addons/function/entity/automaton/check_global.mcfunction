# entity:automaton/check_global
# called by: main:one_second

## Despawn
execute on vehicle unless predicate magical_addons:shared/riding_vehicle run return run function magical_addons:entity/automaton/despawn
execute on vehicle at @s[y=-999,dy=-9999] unless predicate magical_addons:shared/riding_vehicle run return run function magical_addons:entity/automaton/despawn

## Scale
execute on vehicle on passengers store result entity @s transformation.translation[1] float -0.00141 on vehicle on vehicle run attribute @s minecraft:scale get 1000
execute on vehicle on passengers store result entity @s transformation.scale[0] float 0.0013333 store result entity @s transformation.scale[1] float 0.0013333 store result entity @s transformation.scale[2] float 0.0013333 on vehicle on vehicle run attribute @s minecraft:scale get 1000
execute store result entity @s shadow_radius float 0.000576 on vehicle on vehicle run attribute @s minecraft:scale get 1000

## Bossbar
function magical_addons:entity/automaton/bossbar with entity @s data.magical_addons