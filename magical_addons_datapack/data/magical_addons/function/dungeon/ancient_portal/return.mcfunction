# dungeon:ancient_portal/return
# called by: dungeon:ancient_portal/travel

## Set
scoreboard players add @s maddons.portal_time 1
#execute if dimension the_echo if entity @n[type=item_display,tag=maddons.ancient_portal,tag=x,distance=..1.6] run tag @s add maddons.ancient_portal_x
#execute if dimension the_echo if entity @n[type=item_display,tag=maddons.ancient_portal,tag=z,distance=..1.6] run tag @s add maddons.ancient_portal_z

## Debug
execute unless score @s maddons.echo.x matches ..0 unless score @s maddons.echo.x matches 1.. unless score @s maddons.echo.y matches ..0 unless score @s maddons.echo.y matches 1.. unless score @s maddons.echo.z matches ..0 unless score @s maddons.echo.z matches 1.. run kill

## Restore coords
execute store result storage magical_addons:temp data.portal.x double 1 run scoreboard players get @s maddons.echo.x
execute store result storage magical_addons:temp data.portal.y double 1 run scoreboard players get @s maddons.echo.y
execute store result storage magical_addons:temp data.portal.z double 1 run scoreboard players get @s maddons.echo.z

## Teleport
#execute in overworld store success score @s maddons.portal_travel if entity @e[type=item_display,tag=maddons.ancient_portal,distance=..199]
#execute if score @s maddons.portal_travel matches 0 in overworld positioned over motion_blocking_no_leaves run tp @s ~ ~1 ~
execute in overworld run function magical_addons:dungeon/ancient_portal/teleport with storage magical_addons:temp data.portal

## TEST
#execute if score @s[tag=maddons.ancient_portal_x] maddons.portal_travel matches 0 run say yes!
#execute if score @s[tag=maddons.ancient_portal_x] maddons.portal_travel matches 1 run say no!

## X
#execute if score @s[tag=maddons.ancient_portal_x] maddons.portal_travel matches 0 align xyz positioned ~.5 ~ ~.5 in overworld positioned over motion_blocking_no_leaves run fill ~1 ~-1 ~-1 ~-2 ~3 ~ air
#execute if score @s[tag=maddons.ancient_portal_x] maddons.portal_travel matches 0 align xyz positioned ~.5 ~ ~.5 in overworld positioned over motion_blocking_no_leaves run setblock ~-2 ~1 ~ structure_block[mode=load]{ignoreEntities:0b,mode:"LOAD",name:"magical_addons:ancient_portal_x",posX:0,posY:-1,posZ:0,powered:0b,seed:0L,showboundingbox:0b,sizeX:4,sizeY:5,sizeZ:1}
#execute if score @s[tag=maddons.ancient_portal_x] maddons.portal_travel matches 0 align xyz positioned ~.5 ~ ~.5 in overworld positioned over motion_blocking_no_leaves run setblock ~-2 ~ ~ redstone_block

## Z
#execute if score @s[tag=maddons.ancient_portal_z] maddons.portal_travel matches 0 align xyz positioned ~.5 ~ ~.5 in overworld positioned over motion_blocking_no_leaves run fill ~-1 ~-1 ~1 ~ ~3 ~-2 air
#execute if score @s[tag=maddons.ancient_portal_z] maddons.portal_travel matches 0 align xyz positioned ~.5 ~ ~.5 in overworld positioned over motion_blocking_no_leaves run setblock ~ ~1 ~-2 structure_block[mode=load]{ignoreEntities:0b,mode:"LOAD",name:"magical_addons:ancient_portal_z",posX:0,posY:-1,posZ:0,powered:0b,seed:0L,showboundingbox:0b,sizeX:1,sizeY:5,sizeZ:4}
#execute if score @s[tag=maddons.ancient_portal_z] maddons.portal_travel matches 0 align xyz positioned ~.5 ~ ~.5 in overworld positioned over motion_blocking_no_leaves run setblock ~ ~ ~-2 redstone_block

## Play sound
playsound magical_addons:block.portal.travel ambient @s ~ ~ ~ 0.5

## Reset
#tag @s remove maddons.ancient_portal_x
#tag @s remove maddons.ancient_portal_z
scoreboard players reset @s maddons.portal_travel
#execute at @s in overworld run forceload remove ~-6 ~-6 ~6 ~6
execute in overworld run forceload remove ~ ~