# dimension:the_echo/loop
# called by: player:loop

execute as @e[distance=..100,gamemode=!creative,gamemode=!spectator,type=!#magical_addons:invulnerable,tag=!maddons.invul,nbt=!{RootVehicle:{}}] at @s if block ~ ~ ~ water if predicate magical_addons:shared/25_percent run effect give @s poison 5 1
execute as @e[distance=..100,gamemode=!creative,gamemode=!spectator,type=!#magical_addons:invulnerable,tag=!maddons.invul,nbt=!{RootVehicle:{}}] at @s if block ~ ~ ~ water if predicate magical_addons:shared/5_percent run damage @s 2 magic at ~ ~ ~

## Generate custom blocks
function magical_addons:dimension/the_echo/worldgen/start