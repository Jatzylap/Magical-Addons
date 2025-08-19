# magic:commanding_spell/hit_entity
# called by: magic:commanding_spell/cast

execute if entity @n[type=#magical_addons:boss,tag=!maddons.invul,tag=maddons.target_entity] run return 0
execute if entity @n[tag=maddons.boss,tag=maddons.target_entity] run return 0

## If spell is absorbed
execute as @n[type=!#magical_addons:invulnerable,tag=maddons.target_entity] at @s if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"ancient_staff"}}] unless data entity @s SelectedItem.components."minecraft:lore".[5] run return run item modify entity @s weapon.mainhand magical_addons:item/absorb/ancient_staff/commanding_spell
execute as @n[type=!#magical_addons:invulnerable,tag=maddons.target_entity] at @s if items entity @s weapon.offhand *[custom_data~{magical_addons:{id:"ancient_staff"}}] unless data entity @s equipment.offhand.components."minecraft:lore".[5] run return run item modify entity @s weapon.offhand magical_addons:item/absorb/ancient_staff/commanding_spell

## Clear cache
data remove storage magical_addons:temp data.entity

## Get target entity UUID
function gu:convert with entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=maddons.target_entity]
data modify storage magical_addons:temp data.entity.target set from storage gu:main out

## Get caster UUID
data modify storage magical_addons:temp data.entity.UUID set from entity @s UUID

## Get distance from target
execute store result storage magical_addons:temp data.entity.distance int 1 run scoreboard players get @s maddons.commanding_spell

## Start tracking
function magical_addons:magic/commanding_spell/track with storage magical_addons:temp data.entity