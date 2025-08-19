# magic:fire_spell/hit_entity
# called by: magic:fire_spell/loop

## If spell hits caster
execute store success score @s maddons.temp run data modify entity @s item.components."minecraft:custom_data".magical_addons.temp.UUID set from entity @n[type=!#magical_addons:invulnerable,tag=maddons.target_entity] UUID
execute if score @s maddons.temp matches 0 run return 0

## If spell is absorbed
execute as @n[type=!#magical_addons:invulnerable,tag=maddons.target_entity] at @s if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"ancient_staff"}}] unless data entity @s SelectedItem.components."minecraft:lore".[5] run return run item modify entity @s weapon.mainhand magical_addons:item/absorb/ancient_staff/fire_spell
execute as @n[type=!#magical_addons:invulnerable,tag=maddons.target_entity] at @s if items entity @s weapon.offhand *[custom_data~{magical_addons:{id:"ancient_staff"}}] unless data entity @s equipment.offhand.components."minecraft:lore".[5] run return run item modify entity @s weapon.offhand magical_addons:item/absorb/ancient_staff/fire_spell

## If spell is deflected
execute if entity @n[type=#magical_addons:spell_deflector,tag=!maddons.invul,tag=maddons.target_entity] run playsound entity.breeze.deflect hostile @a ~ ~ ~ 1
execute if entity @n[type=#magical_addons:spell_deflector,tag=!maddons.invul,tag=maddons.target_entity] run data remove entity @s item.components."minecraft:custom_data".magical_addons.temp.UUID
execute if entity @n[type=#magical_addons:spell_deflector,tag=!maddons.invul,tag=maddons.target_entity] run return 3

execute as @e[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.target_entity,distance=..2] at @s run data merge entity @s {Fire:50s}
data merge entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=maddons.target_entity] {Fire:50s}

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound magical_addons:item.generic.spell.dispel player @a ~ ~ ~ 1

execute positioned ~-1 ~-1 ~-1 run fill ~ ~ ~ ~1 ~1 ~1 fire replace #magical_addons:non_collidable

kill

return 0