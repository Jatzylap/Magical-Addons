# item:ancient_staff/absorb/spell
# called by: magic:*_spell/hit_entity, player:absorb_sonic_boom

$item modify entity @s weapon.$(hand) magical_addons:item/absorb/ancient_staff/$(spell)

$data merge storage magical_addons:temp {data:{absorb_spell:$(spell)}}

execute if data storage magical_addons:temp {data:{absorb_spell:"sonic_boom"}} run effect give @s instant_health 1 10
execute if data storage magical_addons:temp {data:{absorb_spell:"earth_spell"}} run effect give @s instant_health 1 10

playsound magical_addons:item.generic.spell.absorb player @a ~ ~ ~ 1

return 1