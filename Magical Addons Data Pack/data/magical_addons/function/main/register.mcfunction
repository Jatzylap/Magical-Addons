# main:register
# called by: main:two_seconds

$execute unless data storage magical_addons:registry data.entities[{UUID:'$(UUID)'}] run function magical_addons:dev/register_entity {cmd:"$(cmd)"}