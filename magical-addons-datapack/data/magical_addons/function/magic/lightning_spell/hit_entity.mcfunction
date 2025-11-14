# magic:lightning_spell/hit_entity
# called by: magic:lightning_spell/loop

## If spell hits caster
execute store success score @s maddons.temp run data modify entity @s item.components."minecraft:custom_data".magical_addons.temp.UUID set from entity @n[type=!#magical_addons:invulnerable,tag=maddons.target_entity] UUID
execute if score @s maddons.temp matches 0 run return 0

## If spell is absorbed
execute as @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=maddons.target_entity] at @s if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"ancient_staff"}}] unless data entity @s SelectedItem.components."minecraft:lore".[5] run return run item modify entity @s weapon.mainhand magical_addons:item/absorb/ancient_staff/lightning_spell
execute as @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=maddons.target_entity] at @s if items entity @s weapon.offhand *[custom_data~{magical_addons:{id:"ancient_staff"}}] unless data entity @s equipment.offhand.components."minecraft:lore".[5] run return run item modify entity @s weapon.offhand magical_addons:item/absorb/ancient_staff/lightning_spell

## If spell is deflected
execute if entity @n[type=#magical_addons:spell_deflector,tag=!maddons.invul,tag=maddons.target_entity] run playsound entity.breeze.deflect hostile @a ~ ~ ~ 1
execute if entity @n[type=#magical_addons:spell_deflector,tag=!maddons.invul,tag=maddons.target_entity] run data remove entity @s item.components."minecraft:custom_data".magical_addons.temp.UUID
execute if entity @n[type=#magical_addons:spell_deflector,tag=!maddons.invul,tag=maddons.target_entity] run return 3

playsound magical_addons:item.generic.spell.resonate player @a ~ ~ ~ 1

tag @s add maddons.found_target

execute if block ~ ~4 ~ #magical_addons:non_collidable run return run tp @s ~ ~4 ~ ~ 90
execute if block ~ ~3.5 ~ #magical_addons:non_collidable run return run tp @s ~ ~3.5 ~ ~ 90
execute if block ~ ~3 ~ #magical_addons:non_collidable run return run tp @s ~ ~3 ~ ~ 90
execute if block ~ ~2.5 ~ #magical_addons:non_collidable run return run tp @s ~ ~2.5 ~ ~ 90
execute if block ~ ~2 ~ #magical_addons:non_collidable run return run tp @s ~ ~2 ~ ~ 90
execute if block ~ ~1.5 ~ #magical_addons:non_collidable run return run tp @s ~ ~1.5 ~ ~ 90
execute if block ~ ~1 ~ #magical_addons:non_collidable run return run tp @s ~ ~1 ~ ~ 90
execute if block ~ ~.5 ~ #magical_addons:non_collidable run return run tp @s ~ ~.5 ~ ~ 90
execute if block ~ ~ ~ #magical_addons:non_collidable run return run tp @s ~ ~ ~ ~ 90

return 0