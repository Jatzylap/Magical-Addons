# block:unload
# called by: main:one_minute

## Set base
$setblock ~ ~ ~ $(base_block)

## Preserve data if base is block entity
data modify block ~ ~ ~ components."minecraft:custom_data" set from entity @s data

kill @s