# dungeon:ancient_portal/travel
# called by: main:one_second

## In portal
execute store success score @s maddons.portal_time_check if block ~ ~ ~ light

## Start countdown
execute if score @s maddons.portal_time_check matches 1 if entity @n[type=item_display,tag=maddons.ancient_portal,distance=..1.6] run scoreboard players add @s maddons.portal_time 1

## Reset
execute if score @s[gamemode=spectator] maddons.portal_time_check matches 1.. run scoreboard players reset @s maddons.portal_time
execute if score @s maddons.portal_time_check matches 0 run scoreboard players reset @s maddons.portal_time
execute if score @s maddons.portal_time_check matches 0 if score @s maddons.portal_overlay matches 1.. if items entity @s armor.head *[minecraft:item_model="magical_addons:misc/empty"] run item replace entity @s armor.head with air
#execute if score @s maddons.portal_time_check matches 0 if score @s maddons.portal_overlay matches 1.. if items entity @s armor.head *[!minecraft:item_model="magical_addons:misc/empty",equippable={camera_overlay:""}] run item modify entity @s armor.head with air
execute if score @s maddons.portal_time_check matches 0 run scoreboard players reset @s maddons.portal_overlay

## Begin effects
execute if score @s maddons.portal_time matches 1.. run effect give @s nausea 5 0 true
execute if score @s maddons.portal_time matches 1.. in the_achlys run forceload add ~-6 ~-6 ~6 ~6
execute if score @s maddons.portal_time matches 1.. in overworld run forceload add ~-6 ~-6 ~6 ~6
execute if score @s maddons.portal_time matches 2 run playsound block.portal.trigger block @s ~ ~ ~ 0.5 0.85 0

## Speed up
execute if score @s[gamemode=creative] maddons.portal_time_check matches 1 if score @s maddons.portal_time matches ..3 run scoreboard players set @s maddons.portal_time 4
execute if score @s[type=!player] maddons.portal_time_check matches 1 if score @s maddons.portal_time matches ..3 run scoreboard players set @s maddons.portal_time 4

## Warp to Sky
execute unless dimension the_achlys if score @s maddons.portal_time_check matches 1 if score @s maddons.portal_time matches 4 run function magical_addons:dungeon/ancient_portal/warp

## Return from Sky
execute if dimension the_achlys if score @s maddons.portal_time_check matches 1 if score @s maddons.portal_time matches 4 run function magical_addons:dungeon/ancient_portal/return