# block:wizarding_table/tick
# called by: block:tick_list

## Update block
execute if block ~ ~ ~ barrel[open=true] if predicate magical_addons:block/wizarding_table/update_slot run function magical_addons:block/custom/wizarding_table/operate

## Unregister block
execute if block ~ ~ ~ barrel[open=false] run function magical_addons:dev/unregister_entity with block ~ ~ ~ components."minecraft:custom_data"