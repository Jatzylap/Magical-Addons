# main:two_seconds
# called by: main:first, main:two_seconds

## entities (especially those with limited ticking)
execute at @a run execute as @e[tag=maddons.registered] at @s run function magical_addons:main/register with entity @s
#execute as @e[type=#magical_addons:weaponable,tag=maddons.spawn,predicate=magical_addons:shared/50_percent] at @s run function magical_addons:entity/behaviours/weaponable_mob/spell
#execute as @e[type=#magical_addons:weaponable,tag=!maddons.spawn] at @s run function magical_addons:entity/behaviours/weaponable_mob/weaponise
#execute as @e[type=goat,tag=!maddons.mob,nbt={IsScreamingGoat:1b}] at @s run function magical_addons:entity/behaviours/screaming_goat/set

## player
execute as @a[nbt={Inventory:[{components:{"minecraft:custom_data":{magical_addons:{mana_item:1}}}}]},scores={maddons.mana=199}] at @s run playsound magical_addons:ui.mana.recharge player @s ~ ~ ~ 10000
execute as @a[tag=maddons.aa,nbt={Inventory:[{components:{"minecraft:custom_data":{magical_addons:{mana_item:1}}}}]},scores={maddons.mana=399}] at @s run playsound magical_addons:ui.mana.recharge player @s ~ ~ ~ 10000
execute as @a[tag=!maddons.aa,scores={maddons.mana=..199}] at @s if dimension the_echo run scoreboard players add @s maddons.mana 1
execute as @a[tag=maddons.aa,scores={maddons.mana=..399}] at @s if dimension the_echo run scoreboard players add @s maddons.mana 1
execute as @a[tag=maddons.aa,scores={maddons.mana=401..}] at @s run scoreboard players set @s maddons.mana 400
#execute if predicate magical_addons:shared/10_percent as @a at @s if biome ~ ~ ~ #magical_addons:has_glitch run function magical_addons:player/event/glitch

## wand
execute as @a[tag=!maddons.fullmana,gamemode=!creative,predicate=magical_addons:shared/wielding_mana_item] at @s run function magical_addons:player/event/mana_meter

## block
execute as @e[type=item_display,tag=maddons.brewing_stand,tag=!maddons.registered] at @s unless data block ~ ~ ~ {BrewTime:0s} if data block ~ ~ ~ {Items:[{Slot:3b,components:{"minecraft:custom_data":{magical_addons:{brewable:1b}}}}]} run function magical_addons:dev/register_entity {cmd:"function magical_addons:block/vanilla/brewing_stand/tick"}
execute at @a as @e[type=item_display,tag=maddons.block,tag=!maddons.block.no_break,distance=..16] at @s run function magical_addons:block/break with entity @s item.components."minecraft:custom_data".magical_addons

## item
execute at @a run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}},distance=..16]

## dev
execute store result score #maddons.block maddons.stat if entity @e[tag=maddons.block]
execute store result score #maddons.entity maddons.stat if entity @e[tag=maddons.entity]
execute store result score #maddons.item maddons.stat if entity @e[type=item]
execute store result score #maddons.magic maddons.stat if entity @e[tag=maddons.magic]
execute store result score #maddons.particle maddons.stat if entity @e[tag=maddons.particle]
execute store result score #maddons.registered maddons.stat run data get storage magical_addons:registry data.entities
execute store result score #maddons.global maddons.stat if entity @e

# shared
schedule function magical_addons:main/two_seconds 2s