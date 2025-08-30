# item:sparkstone_splash_potion/tick
# called by: main:tick_cycle
# registered by: player:tick

execute unless predicate magical_addons:shared/riding_vehicle on passengers run kill
execute unless predicate magical_addons:shared/riding_vehicle run kill
execute unless predicate magical_addons:shared/riding_vehicle as @a[dy=-2] run return run scoreboard players add @s maddons.mana 50
execute unless predicate magical_addons:shared/riding_vehicle run scoreboard players add @a[distance=..2.5] maddons.mana 50