# item:ancient_staff/absorb/spell
# called by: magic:*_spell/hit_entity, player:absorb_sonic_boom

$item modify entity @s weapon.$(hand) magical_addons:item/absorb/ancient_staff/$(spell)

playsound magical_addons:item.generic.spell.absorb player @a ~ ~ ~ 1

return 1