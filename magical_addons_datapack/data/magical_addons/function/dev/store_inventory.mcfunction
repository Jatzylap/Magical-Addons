# dev:store_inventory
# called by: <dev>

data modify storage maddons.player:registry data.temp.UUID set from entity @s UUID
$data modify storage maddons.player:registry data.temp.slot set value "$(slot)"

function magical_addons:dev/---/store_inventory/0 with storage maddons.player:registry data.temp