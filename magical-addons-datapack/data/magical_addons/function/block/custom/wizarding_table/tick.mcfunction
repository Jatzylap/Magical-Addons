# block:wizarding_table/tick
# called by advancement: magical_addons:shared/tick_wizarding_table

## Update block
execute if block ~ ~ ~ barrel[open=true] run return run function magical_addons:block/custom/wizarding_table/update_gui

## Unregister block
execute if block ~ ~ ~ barrel[open=false] run tag @s remove maddons.entity.tickable