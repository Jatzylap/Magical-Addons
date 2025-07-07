# main:unregister_entity
# called by: main:unregister_cycle

$execute unless entity $(UUID) run data remove storage magical_addons:registry data.entities[{UUID:$(UUID)}]