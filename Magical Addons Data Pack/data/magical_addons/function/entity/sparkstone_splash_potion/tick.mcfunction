# item:sparkstone_splash_potion/tick
# called by: main:tick_cycle
# registered by: player:loop

execute unless predicate magical_addons:shared/riding_vehicle run scoreboard players add @a[dy=-2] maddons.mana 50
execute unless predicate magical_addons:shared/riding_vehicle on passengers run kill
execute unless predicate magical_addons:shared/riding_vehicle run kill