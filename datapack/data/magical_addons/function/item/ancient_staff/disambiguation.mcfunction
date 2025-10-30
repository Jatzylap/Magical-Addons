# item:ancient_staff/disambiguation
# called by: item:ancient_staff/use_mainhand, item:ancient_staff/use_offhand

## Ice spell
$execute if items entity @s weapon.$(hand) *[custom_model_data={strings:["ice"]}] run return run function magical_addons:item/ancient_staff/cast/spell {spell:'ice_spell',hand:'$(hand)',nbt:'$(nbt)'}

## Fire spell
$execute if items entity @s weapon.$(hand) *[custom_model_data={strings:["fire"]}] run return run function magical_addons:item/ancient_staff/cast/spell {spell:'fire_spell',hand:'$(hand)',nbt:'$(nbt)'}

## Wind spell
$execute if items entity @s weapon.$(hand) *[custom_model_data={strings:["wind"]}] run return run function magical_addons:item/ancient_staff/cast/spell {spell:'wind_spell',hand:'$(hand)',nbt:'$(nbt)'}

## Lightning spell
$execute if items entity @s weapon.$(hand) *[custom_model_data={strings:["lightning"]}] run return run function magical_addons:item/ancient_staff/cast/spell {spell:'lightning_spell',hand:'$(hand)',nbt:'$(nbt)'}

## Commanding spell
$execute if items entity @s weapon.$(hand) *[custom_model_data={strings:["commanding"]}] run return run function magical_addons:magic/commanding_spell/start

## Damaging spell
$execute if items entity @s weapon.$(hand) *[custom_model_data={strings:["damaging"]}] run return run function magical_addons:item/ancient_staff/cast/spell {spell:'damaging_spell',hand:'$(hand)',nbt:'$(nbt)'}

## Sonic boom
$execute if items entity @s weapon.$(hand) *[custom_model_data={strings:["sonic"]}] run return run function magical_addons:item/ancient_staff/cast/spell {spell:'sonic_boom',hand:'$(hand)',nbt:'$(nbt)'}