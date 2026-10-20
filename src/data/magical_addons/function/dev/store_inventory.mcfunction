# dev:store_inventory
# called by: <dev>

data modify storage magical_addons:temp data.entity.UUID set from entity @s UUID
$data modify storage magical_addons:temp data.entity.slot set value "$(slot)"

function magical_addons:dev/---/store_inventory/0 with storage magical_addons:temp data.entity