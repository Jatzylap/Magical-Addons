# entity:sculk_spider/facing
# called by: entity:sculk_spider/loop

execute if predicate magical_addons:shared/15_percent on vehicle at @s on passengers run rotate @s[tag=maddons.body] ~ 0
execute on vehicle at @s on passengers on passengers run rotate @s[tag=maddons.head] ~ ~