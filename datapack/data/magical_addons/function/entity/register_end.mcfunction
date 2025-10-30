# entity:register_end
# called by: entity:register

## Store UUID into storage 'magical_addons:tick'
$execute unless data storage magical_addons:tick data.entities[{UUID:'$(out)'}] run data modify storage magical_addons:tick data.entities append value {UUID:'$(out)'}

## Store UUID into entity
$data modify entity @s data.magical_addons.UUID set value '$(out)'