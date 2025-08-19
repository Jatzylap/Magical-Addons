# block:custom/wizarding_table/engage
# called by: block:custom/wizarding_table/interact, main:one_second

tag @s add on
execute if data block ~ ~ ~ {components:{"minecraft:custom_model_data":{flags:[1b]}}} run tag @s add maddons.no_clear

## Block
data merge entity @s {brightness:{sky:15,block:9}}
execute store result block ~ ~ ~ components."minecraft:custom_model_data".flags[0] byte 1 run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 1
function magical_addons:block/custom/wizarding_table/set_state with block ~ ~ ~
data remove block ~ ~ ~ lock

## Light
fill ~1 ~ ~ ~-1 ~ ~ light[level=9] keep
fill ~ ~ ~1 ~ ~ ~-1 light[level=9] keep
fill ~ ~1 ~ ~ ~-1 ~ light[level=9] keep

## Set damage
execute store result score @s maddons.max_damage store result score @s maddons.idamage run data get block ~ ~ ~ components."minecraft:custom_data".magical_addons.max_damage
execute store result score @s maddons.damage run data get block ~ ~ ~ components."minecraft:custom_data".magical_addons.damage
execute if predicate magical_addons:block/wizarding_table/check_hopper run function magical_addons:block/custom/wizarding_table/damage_from_block
execute if items entity @p[advancements={magical_addons:---/block/interact/wizarding_table_off=true}] weapon.mainhand *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run function magical_addons:block/custom/wizarding_table/damage_from_player

## Sounds / Particles
playsound block.respawn_anchor.charge block @a ~ ~ ~ 1 1.3
particle firework ~.5 ~ ~ 0 0 0 .1 2
particle firework ~-.5 ~ ~ 0 0 0 .1 2
particle firework ~ ~ ~.5 0 0 0 .1 2
particle firework ~ ~ ~-.5 0 0 0 .1 2

## Reset GUI
function magical_addons:block/custom/wizarding_table/gui/reset

tag @s remove off
execute if entity @s[tag=maddons.no_clear] run return 0

## Clear 1 orb from a neighbouring hopper
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.0 with air
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.1 with air
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.2 with air
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.3 with air
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.4 with air
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.0 with air
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.1 with air
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.2 with air
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.3 with air
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.4 with air
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.0 with air
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.1 with air
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.2 with air
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.3 with air
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.4 with air
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.0 with air
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.1 with air
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.2 with air
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.3 with air
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.4 with air
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.0 with air
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.1 with air
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.2 with air
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.3 with air
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.4 with air
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.0 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.0 with air
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.1 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.1 with air
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.2 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.2 with air
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.3 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.3 with air
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:hopper if items block ~ ~ ~ container.4 *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run return run item replace block ~ ~ ~ container.4 with air