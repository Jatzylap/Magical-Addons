# magical_addons:entity/unregister_tick
# called by: magical_addons:entity/unregister_cycle

$execute unless entity $(UUID) run bossbar remove magical_addons:$(UUID)
$execute unless entity $(UUID) run data remove storage magical_addons:tick data.entities[{UUID:'$(UUID)'}]