# main:register
# called by: main:one_second

$execute unless data storage magical_addons:tick data.entities[{UUID:'$(UUID)'}] run function magical_addons:dev/register_entity {tick_cmd:'$(tick_cmd)'}