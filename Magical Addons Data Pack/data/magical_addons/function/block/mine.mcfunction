# block:mine
# called by: iris:raycast/macro_functions/callback
# registered by: player:loop

## Change blocks to mineable blocks
execute align xyz positioned ~.5 ~.5 ~.5 if entity @s[gamemode=!spectator] run function magical_addons:block/mine_scan

## Mining data
scoreboard players reset @s maddons.block.loot_id
execute align xyz positioned ~.5 ~.5 ~.5 if entity @s[gamemode=!creative,gamemode=!spectator] run attribute @s minecraft:block_break_speed modifier remove magical_addons:mine_speed
execute align xyz positioned ~.5 ~.5 ~.5 if entity @s[gamemode=!creative,gamemode=!spectator] if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run return run function magical_addons:block/mine_data with block ~ ~ ~ components."minecraft:custom_data".magical_addons
execute align xyz positioned ~.5 ~.5 ~.5 if entity @s[gamemode=!creative,gamemode=!spectator] if items entity @s weapon.mainhand #magical_addons:mining_tools run item modify entity @s weapon.mainhand magical_addons:item/mine/air