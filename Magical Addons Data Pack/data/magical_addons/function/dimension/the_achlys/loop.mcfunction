# dimension:the_achlys/loop
# called by: player:loop

execute if entity @s[gamemode=!creative,gamemode=!spectator,nbt=!{RootVehicle:{}}] if block ~ ~ ~ water if predicate magical_addons:shared/25_percent run effect give @s poison 5 1
execute if entity @s[gamemode=!creative,gamemode=!spectator,nbt=!{RootVehicle:{}}] if block ~ ~ ~ water if predicate magical_addons:shared/5_percent run effect give @s wither 2 0 true
execute as @e[distance=..100,type=!#magical_addons:invulnerable,tag=!maddons.invul,type=!player,nbt=!{RootVehicle:{}}] at @s if block ~ ~ ~ water if predicate magical_addons:shared/25_percent run effect give @s poison 5 1
execute as @e[distance=..100,type=!#magical_addons:invulnerable,tag=!maddons.invul,type=!player,nbt=!{RootVehicle:{}}] at @s if block ~ ~ ~ water if predicate magical_addons:shared/5_percent run effect give @s wither 2 0 true
#execute if predicate magical_addons:shared/0.5_percent as @e[sort=random,limit=1,tag=kt.sparkstone_ore,distance=..30] at @s run function magical_addons:block/custom/sparkstone_cluster/ambient
execute if predicate magical_addons:shared/0.1_percent if biome ~ ~ ~ magical_addons:silent_grove run function magical_addons:shared/glitch