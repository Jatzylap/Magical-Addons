# entity:flying_cow/facing
# called by: entity:flying_cow/loop

execute if predicate magical_addons:shared/15_percent on vehicle at @s on passengers run rotate @s[tag=maddons.rotatable] ~ 0
execute on vehicle at @s on passengers run rotate @s[tag=maddons.head] ~ ~