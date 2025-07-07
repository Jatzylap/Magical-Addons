# dev:store_inventory
# called by: <dev>

data modify storage magical_addons:temp data.player.UUID set from entity @s UUID
$data modify storage magical_addons:temp data.player.slot set value "$(slot)"

function magical_addons:dev/---/store_inventory/0 with storage magical_addons:temp data.player