# main:two_seconds
# called by: main:first, main:two_seconds

## entities
execute at @a as @e[type=#magical_addons:weaponable,distance=..32,nbt=!{NoAI:1b}] at @s if items entity @s weapon.mainhand *[custom_data~{magical_addons:{mana_item:1b}}] if predicate magical_addons:shared/50_percent anchored eyes facing entity @p[gamemode=!spectator,gamemode=!creative] eyes run function magical_addons:item/iron_wand/disambiguation {hand:"mainhand"}
execute at @a as @e[type=#magical_addons:weaponable,distance=..32,nbt=!{NoAI:1b}] at @s if dimension minecraft:the_aether unless data entity @s equipment.mainhand run function magical_addons:entity/weaponise
execute as @e[type=goat,tag=!maddons.registered,nbt={IsScreamingGoat:1b}] at @s run function magical_addons:entity/goat/screaming/set

## player
execute as @a[nbt={Inventory:[{components:{"minecraft:custom_data":{magical_addons:{mana_item:1}}}}]},scores={maddons.mana=199}] at @s run playsound magical_addons:ui.mana.recharge player @s ~ ~ ~ 10000
execute as @a[scores={maddons.mana=..199},gamemode=!creative,gamemode=!spectator] at @s if predicate magical_addons:player/has_sparkstone_orb run function magical_addons:item/sparkstone_orb/share_mana
execute as @a[scores={maddons.mana=401..}] at @s run scoreboard players set @s maddons.mana 400
execute as @a[gamemode=!creative,tag=maddons.using_commanding_spell] at @s if score @s maddons.mana matches 1.. run scoreboard players remove @s maddons.mana 1
execute as @a[gamemode=!creative,tag=maddons.using_commanding_spell] at @s if score @s maddons.mana matches 1.. run function magical_addons:player/mana_meter
execute as @a[gamemode=!creative,tag=maddons.using_commanding_spell] at @s unless score @s maddons.mana matches 1.. run tag @s add maddons.commanding_spell.stop

## block
execute as @e[type=#magical_addons:display,tag=maddons.brewing_stand,tag=!maddons.registered] at @s unless data block ~ ~ ~ {BrewTime:0s} if data block ~ ~ ~ {Items:[{Slot:3b,components:{"minecraft:custom_data":{magical_addons:{brewable:1b}}}}]} run function magical_addons:dev/register_entity {cmd:"function magical_addons:block/vanilla/brewing_stand/tick"}
execute at @a as @e[type=#magical_addons:display,tag=maddons.golden_oak_leaves,limit=16,sort=random,distance=..16] at @s if block ~ ~-1 ~ air if predicate magical_addons:shared/25_percent run particle minecraft:tinted_leaves{color:[1,1,0,1]} ~ ~ ~ 0.2 0.2 0.2 1 2

## block interactions
execute at @a run kill @e[type=interaction,tag=maddons.block.interaction]

## item
execute at @a run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}},distance=..16]

## dev
execute store result score #maddons.block maddons.stat if entity @e[tag=maddons.block]
execute store result score #maddons.entity maddons.stat if entity @e[tag=maddons.entity]
execute store result score #maddons.item maddons.stat if entity @e[type=item]
execute store result score #maddons.magic maddons.stat if entity @e[tag=maddons.magic]
execute store result score #maddons.particle maddons.stat if entity @e[tag=maddons.particle]
execute store result score #maddons.registered maddons.stat run data get storage magical_addons:tick data.entities
execute store result score #maddons.global maddons.stat if entity @e

# shared
schedule function magical_addons:main/two_seconds 2s