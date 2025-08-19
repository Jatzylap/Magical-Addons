# block:vanilla/brewing_stand/set_potion
# called by: block:vanilla/brewing_stand/tick

$item replace block ~ ~ ~ container.$(slot) with air
$loot replace block ~ ~ ~ container.$(slot) loot magical_addons:$(potion)