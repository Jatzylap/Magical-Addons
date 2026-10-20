# item:netherite_wand/disambiguation
# called by: item:netherite_wand/use_mainhand, item:netherite_wand/use_offhand

## Ice spell
$execute if items entity @s weapon.$(hand) *[enchantments={"magical_addons:ice_spell":1}] run return run function magical_addons:magic/ice_spell/start

## Fire spell
$execute if items entity @s weapon.$(hand) *[enchantments={"magical_addons:fire_spell":1}] run return run function magical_addons:magic/fire_spell/start

## Wind spell
$execute if items entity @s weapon.$(hand) *[enchantments={"magical_addons:wind_spell":1}] run return run function magical_addons:magic/wind_spell/start

## Lightning spell
$execute if items entity @s weapon.$(hand) *[enchantments={"magical_addons:lightning_spell":1}] run return run function magical_addons:magic/lightning_spell/start

## Commanding spell
$execute if items entity @s weapon.$(hand) *[enchantments={"magical_addons:commanding_spell":1}] run return run function magical_addons:magic/commanding_spell/start

## Damaging spell
$execute if items entity @s weapon.$(hand) *[enchantments={"magical_addons:damaging_spell":1}] run return run function magical_addons:magic/damaging_spell/start

## Water spell
$execute if items entity @s weapon.$(hand) *[enchantments={"magical_addons:water_spell":1}] run return run function magical_addons:magic/water_spell/start

## Earth spell
$execute if items entity @s weapon.$(hand) *[enchantments={"magical_addons:earth_spell":1}] run return run function magical_addons:magic/earth_spell/start
