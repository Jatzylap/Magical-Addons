# block:custom/wizarding_table/damage_from_player
# called by: block:custom/wizarding_table/engage

execute store result block ~ ~ ~ components."minecraft:custom_data".magical_addons.damage int 1 store result score @s maddons.damage run data get entity @p[advancements={magical_addons:---/block/interact/wizarding_table_off=true}] SelectedItem{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone_orb"}}}}.components."minecraft:damage"
scoreboard players operation @s maddons.idamage -= @s maddons.damage 

## Clear orb (in mainhand)
execute as @p[advancements={magical_addons:---/block/interact/wizarding_table_off=true},gamemode=!creative,gamemode=!spectator] if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"sparkstone_orb"}}] run item replace entity @s weapon.mainhand with air
