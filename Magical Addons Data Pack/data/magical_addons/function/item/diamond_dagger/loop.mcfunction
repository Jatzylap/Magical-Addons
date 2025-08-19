# item:diamond_dagger/tick
# called by: main:tick_cycle
# registered by: item:diamond_dagger/shoot

execute store result entity @s Rotation[1] float -1 on vehicle run data get entity @s Rotation[1]
execute unless predicate magical_addons:shared/riding_vehicle run function magical_addons:item/diamond_dagger/break