# magic:earth_spell/hit_entity
# called by: magic:earth_spell/loop

## If spell hits caster
execute store success score @s maddons.temp run data modify entity @s item.components."minecraft:custom_data".magical_addons.temp.UUID set from entity @n[type=!#magical_addons:invulnerable,tag=maddons.target_entity] UUID
execute if score @s maddons.temp matches 0 run return 0

## If spell is absorbed
execute as @n[type=!#magical_addons:invulnerable,tag=maddons.target_entity] at @s if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"ancient_staff"}}] unless data entity @s SelectedItem.components."minecraft:lore".[5] run return run item modify entity @s weapon.mainhand magical_addons:item/absorb/ancient_staff/earth_spell
execute as @n[type=!#magical_addons:invulnerable,tag=maddons.target_entity] at @s if items entity @s weapon.offhand *[custom_data~{magical_addons:{id:"ancient_staff"}}] unless data entity @s equipment.offhand.components."minecraft:lore".[5] run return run item modify entity @s weapon.offhand magical_addons:item/absorb/ancient_staff/earth_spell

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound magical_addons:item.generic.spell.dispel player @a ~ ~ ~ 1

#kill

return 0