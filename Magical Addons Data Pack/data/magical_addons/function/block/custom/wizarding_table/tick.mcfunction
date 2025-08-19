# block:wizarding_table/tick
# called by: main:tick_entity
# registered by: block:custom/wizarding_table/interact

## Update block
execute if block ~ ~ ~ barrel[open=true] run return run function magical_addons:block/custom/wizarding_table/update_gui

## Unregister block
execute if block ~ ~ ~ barrel[open=false] run function magical_addons:block/custom/wizarding_table/close