# magic:wind_spell/hit_entity
# called by: magic:wind_spell/loop

## If spell hits caster
execute store success score @s maddons.temp run data modify entity @s item.components."minecraft:custom_data".magical_addons.temp.UUID set from entity @n[type=!#magical_addons:invulnerable,tag=maddons.target_entity] UUID
execute if score @s maddons.temp matches 0 run return 0

## If spell is absorbed
execute as @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=maddons.target_entity] at @s if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"ancient_staff"}}] unless data entity @s SelectedItem.components."minecraft:lore".[5] run return run item modify entity @s weapon.mainhand magical_addons:item/absorb/ancient_staff/wind_spell
execute as @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=maddons.target_entity] at @s if items entity @s weapon.offhand *[custom_data~{magical_addons:{id:"ancient_staff"}}] unless data entity @s equipment.offhand.components."minecraft:lore".[5] run return run item modify entity @s weapon.offhand magical_addons:item/absorb/ancient_staff/wind_spell

## If spell is deflected
execute if entity @n[type=#magical_addons:spell_deflector,tag=!maddons.invul,tag=maddons.target_entity] run playsound entity.breeze.deflect hostile @a ~ ~ ~ 1
execute if entity @n[type=#magical_addons:spell_deflector,tag=!maddons.invul,tag=maddons.target_entity] run data remove entity @s item.components."minecraft:custom_data".magical_addons.temp.UUID
execute if entity @n[type=#magical_addons:spell_deflector,tag=!maddons.invul,tag=maddons.target_entity] run return 3

particle gust_emitter_large ~ ~ ~ 0 0 0 0 1 force

## Close radius
scoreboard players set $strength player_motion.api.launch -20000
execute as @e[type=!#magical_addons:invulnerable,type=!player,tag=!maddons.invul,distance=..3] at @s anchored eyes facing entity @n[tag=maddons.wind_spell] feet run function magical_addons:dev/set_motion_vector {power:-2}
execute as @a[distance=..3] at @s anchored eyes facing entity @n[tag=maddons.wind_spell] feet run function player_motion:api/launch_looking

## Far radius
scoreboard players set $strength player_motion.api.launch -10000
execute as @e[type=!#magical_addons:invulnerable,type=!player,tag=!maddons.invul,distance=3.001..5] at @s anchored eyes facing entity @n[tag=maddons.wind_spell] feet run function magical_addons:dev/set_motion_vector {power:-1}
execute as @a[distance=3.001..5] at @s anchored eyes facing entity @n[tag=maddons.wind_spell] feet run function player_motion:api/launch_looking

playsound magical_addons:item.generic.spell.dispel player @a ~ ~ ~ 1

kill

return 0