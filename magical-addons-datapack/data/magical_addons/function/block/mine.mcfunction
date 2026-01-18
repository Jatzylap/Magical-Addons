# block:mine
# called by: bs.raycast:utils/on_targeted_block
# registered by: player:tick

#title @s times 0 1 0
#title @s title ["",{"nbt":"attributes[{id:\"minecraft:block_break_speed\"}].base","interpret":false,"entity":"@s"}]
#execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run return run attribute @s block_break_speed base set 64
#attribute @s block_break_speed base set 1

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