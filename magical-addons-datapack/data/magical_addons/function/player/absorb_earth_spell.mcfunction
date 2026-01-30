# player:absorb_earth_spell
# called by advancement: player:absorb_earth_spell

advancement revoke @s only magical_addons:---/player/absorb_earth_spell

execute if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"ancient_staff"}}] unless data entity @s SelectedItem.components."minecraft:lore".[5] run return run function magical_addons:item/ancient_staff/absorb/spell {hand:"mainhand",spell:"earth_spell"}

execute if items entity @s weapon.offhand *[custom_data~{magical_addons:{id:"ancient_staff"}}] unless data entity @s equipment.offhand.components."minecraft:lore".[5] run return run function magical_addons:item/ancient_staff/absorb/spell {hand:"offhand",spell:"earth_spell"}