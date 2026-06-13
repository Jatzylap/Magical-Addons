# block:mine
# called by: iris:raycast/macro_functions/callback
# registered by: player:tick

## DEBUG
#execute align xyz positioned ~.5 ~.5 ~.5 run particle flame ~ ~ ~ 0 2 0 0 100
#execute align xyz positioned ~.5 ~.5 ~.5 if entity @s[gamemode=!creative,gamemode=!spectator] if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run return run attribute @s block_break_speed base set 500
#execute align xyz positioned ~.5 ~.5 ~.5 if entity @s[gamemode=!creative,gamemode=!spectator] run attribute @s block_break_speed base reset

## Reset
scoreboard players reset @s maddons.block.loot_id
attribute @s minecraft:block_break_speed modifier remove magical_addons:mine_speed

## Save block target
function magical_addons:block/save_target with entity @s

## Change blocks to mineable blocks
execute align xyz positioned ~.5 ~.5 ~.5 if entity @s[gamemode=!spectator] run function magical_addons:block/mine_scan

## Set interaction on interactable blocks
execute if block ~ ~ ~ #magical_addons:interactable if items entity @s weapon.* *[custom_data~{magical_addons:{can_interact_with_block:1b}}] run function magical_addons:block/interact with entity @s SelectedItem.components."minecraft:custom_data".magical_addons

## Mining data
execute align xyz positioned ~.5 ~.5 ~.5 if entity @s[gamemode=!creative,gamemode=!spectator] if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run return run function magical_addons:block/mine_data with block ~ ~ ~ components."minecraft:custom_data".magical_addons
execute align xyz positioned ~.5 ~.5 ~.5 if entity @s[gamemode=!creative,gamemode=!spectator] if items entity @s weapon.mainhand #magical_addons:mining_tools run item modify entity @s weapon.mainhand magical_addons:item/mine/air