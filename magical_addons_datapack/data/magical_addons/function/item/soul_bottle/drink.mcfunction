# item:soul_bottle/drink
# called by advancement : item:lucidity_potion_drink

advancement revoke @s only magical_addons:---/item/use/soul_bottle

execute if predicate magical_addons:shared/50_percent run return run effect give @s instant_damage 1 0

effect give @s instant_health 1 0