# block:mine
# called by: iris:raycast/macro_functions/callback

## Mining scan
function magical_addons:block/mine_scan

## Set block state
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run function magical_addons:block/set_state with block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties

## Mining speed
execute if entity @s[gamemode=!creative,gamemode=!spectator] run attribute @s minecraft:block_break_speed modifier remove maddons.player
execute if entity @s[gamemode=!creative,gamemode=!spectator] if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run return run function magical_addons:block/mine_speed with block ~ ~ ~ components."minecraft:custom_data".magical_addons
execute if entity @s[gamemode=!creative,gamemode=!spectator] if items entity @s weapon.mainhand #magical_addons:mining_tools run item modify entity @s weapon.mainhand magical_addons:item/mine/air
