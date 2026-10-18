# block:custom/wizarding_table/gui/consume/target
# called by: block:custom/wizarding_table/gui/main

## Drag / Single
execute if items entity @p player.cursor *[custom_data~{magical_addons:{result:1}}] run return run function magical_addons:block/custom/wizarding_table/gui/consume/single

## Shift-click (drops all crafting results near container based on whether nearest player has an item in cursor slot)
execute unless items entity @p player.cursor *[custom_data~{magical_addons:{result:1}}] run function magical_addons:block/custom/wizarding_table/gui/consume/all