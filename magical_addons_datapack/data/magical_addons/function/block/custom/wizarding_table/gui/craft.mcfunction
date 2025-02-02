# block:custom/wizarding_table/gui/craft
# called by: block:custom/wizarding_table/gui

scoreboard players reset @s maddons.craft

## Wands
execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/wand run loot replace block ~ ~ ~ container.16 loot magical_addons:wand
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/sparkstone_pickaxe run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone_pickaxe

## Staffs
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/alatar_staff run loot replace block ~ ~ ~ container.16 loot magical_addons:alatar_staff
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/healing_staff run loot replace block ~ ~ ~ container.16 loot magical_addons:healing_staff
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/earth_staff run loot replace block ~ ~ ~ container.16 loot magical_addons:earth_staff
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/lightning_staff run loot replace block ~ ~ ~ container.16 loot magical_addons:lightning_staff
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/trident_of_poseidon run loot replace block ~ ~ ~ container.16 loot magical_addons:trident_of_poseidon
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/sonic_staff run loot replace block ~ ~ ~ container.16 loot magical_addons:sonic_staff

## Blocks
execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/sparkstone run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/echostone run loot replace block ~ ~ ~ container.16 loot magical_addons:echostone
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/moonstone run loot replace block ~ ~ ~ container.16 loot magical_addons:moonstone
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/cursed_head run loot replace block ~ ~ ~ container.16 loot magical_addons:cursed_head

## Swords
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/fire_sword run loot replace block ~ ~ ~ container.16 loot magical_addons:fire_sword
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/light_sword run loot replace block ~ ~ ~ container.16 loot magical_addons:light_sword
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/earth_sword run loot replace block ~ ~ ~ container.16 loot magical_addons:earth_sword
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/chaos_sword run loot replace block ~ ~ ~ container.16 loot magical_addons:chaos_sword

## Rods
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/fire_rod run loot replace block ~ ~ ~ container.16 loot magical_addons:fire_rod
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/ice_rod run loot replace block ~ ~ ~ container.16 loot magical_addons:ice_rod
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/cursed_rod run loot replace block ~ ~ ~ container.16 loot magical_addons:cursed_rod
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/water_rod run loot replace block ~ ~ ~ container.16 loot magical_addons:water_rod
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/commanding_rod run loot replace block ~ ~ ~ container.16 loot magical_addons:commanding_rod
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/blocking_rod run loot replace block ~ ~ ~ container.16 loot magical_addons:blocking_rod
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/earth_rod run loot replace block ~ ~ ~ container.16 loot magical_addons:earth_rod
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/sonic_rod run loot replace block ~ ~ ~ container.16 loot magical_addons:sonic_rod
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/healing_rod run loot replace block ~ ~ ~ container.16 loot magical_addons:healing_rod
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/wind_rod run loot replace block ~ ~ ~ container.16 loot magical_addons:wind_rod

## Orbs
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/empty_orb run loot replace block ~ ~ ~ container.16 loot magical_addons:empty_orb
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/purity_orb run loot replace block ~ ~ ~ container.16 loot magical_addons:purity_orb
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/sparkstone_orb run loot replace block ~ ~ ~ container.16 loot magical_addons:sparkstone_orb
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/agility_orb run loot replace block ~ ~ ~ container.16 loot magical_addons:agility_orb
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/regeneration_orb run loot replace block ~ ~ ~ container.16 loot magical_addons:regeneration_orb
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/strengthening_orb run loot replace block ~ ~ ~ container.16 loot magical_addons:strengthening_orb

## Rings
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/invisibility_ring run loot replace block ~ ~ ~ container.16 loot magical_addons:invisibility_ring
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/poseidon_ring run loot replace block ~ ~ ~ container.16 loot magical_addons:poseidon_ring
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/protection_ring run loot replace block ~ ~ ~ container.16 loot magical_addons:protection_ring
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/geryon_ring run loot replace block ~ ~ ~ container.16 loot magical_addons:geryon_ring

## Artefacts
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/portkey run loot replace block ~ ~ ~ container.16 loot magical_addons:portkey
#execute store success score @s maddons.craft if predicate magical_addons:recipe/wizarding_table/philosopher_stone run loot replace block ~ ~ ~ container.16 loot magical_addons:philosopher_stone

execute if score @s maddons.craft matches 1 run data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_data".magical_addons merge value {gui:0,result:1}