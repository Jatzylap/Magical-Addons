# main:tick_entity
# called by: main:tick_cycle

$execute as $(UUID) at @s run $(cmd)

$execute unless entity $(UUID) run data remove storage maddons.main:registry data.entities[{UUID:$(UUID)}]