# item:golden_dagger/tick
# called by: entity:tick

execute store result entity @s Rotation[1] float -1 on vehicle run data get entity @s Rotation[1]
execute unless predicate magical_addons:shared/riding_vehicle run function magical_addons:item/golden_dagger/break