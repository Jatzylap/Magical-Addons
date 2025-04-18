# main:two_seconds
# called by: main:first, main:two_seconds

## entity
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
execute if predicate magical_addons:shared/10_percent as @a at @s if biome ~ ~ ~ #magical_addons:has_glitch run function magical_addons:player/event/glitch
#execute as @a at @s run execute as @e[type=marker,tag=maddons.tower_center,tag=!maddons.tower_cloud,tag=!maddons.magic,distance=..9] at @s positioned ~-9 ~ ~-9 run execute unless entity @e[tag=maddons.tower_crystal,dx=18,dy=40,dz=18] positioned ~9 ~ ~9 run tag @s add maddons.glyph_altar
#execute as @a at @s run execute as @e[type=marker,tag=maddons.tower_center,distance=..9] at @s positioned ~-9 ~ ~-9 run execute unless entity @e[tag=maddons.tower_crystal,dx=18,dy=40,dz=18] positioned ~9 ~ ~9 run tag @s add maddons.magic

## wand
#scoreboard players remove @a[advancements={magical_addons:master_health=true,magical_addons:learn_health=true},tag=maddons.usingAgilityOrb] kt.mana 2
#scoreboard players remove @a[advancements={magical_addons:master_health=true,magical_addons:learn_health=true},tag=maddons.usingPurityOrb] kt.mana 2
#scoreboard players remove @a[advancements={magical_addons:master_health=true,magical_addons:learn_health=true},tag=maddons.usingRegenerationOrb] kt.mana 2
#scoreboard players remove @a[advancements={magical_addons:master_health=true,magical_addons:learn_health=true},tag=maddons.usingStrengtheningOrb] kt.mana 2
#scoreboard players remove @a[tag=maddons.usingtransportRod,nbt={SelectedItem:{tag:{CommandingRod:1}}}] maddons.mana 2
#scoreboard players remove @a[tag=maddons.usingblockingRod] maddons.mana 2
execute as @a[tag=!maddons.fullmana,gamemode=!creative,predicate=magical_addons:shared/wielding_mana_item] at @s run function magical_addons:player/event/mana_meter
#
### charm
#execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{AgilityOrb:1}}]},nbt=!{SelectedItem:{tag:{AgilityOrb:1}}},tag=maddons.usingAgilityOrb] at @s run function magical_addons:item/agility_orb/clear
#execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{PurityOrb:1}}]},nbt=!{SelectedItem:{tag:{PurityOrb:1}}},tag=maddons.usingPurityOrb] at @s run function magical_addons:item/purity_orb/clear
#execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{RegenerationOrb:1}}]},nbt=!{SelectedItem:{tag:{RegenerationOrb:1}}},tag=maddons.usingRegenerationOrb] at @s run function magical_addons:item/regeneration_orb/clear
#execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{StrengtheningOrb:1}}]},nbt=!{SelectedItem:{tag:{StrengtheningOrb:1}}},tag=maddons.usingStrengtheningOrb] at @s run function magical_addons:item/strengthening_orb/clear
#execute as @a[scores={maddons.mana=0},tag=maddons.usingAgilityOrb] at @s run function magical_addons:item/agility_orb/clear
#execute as @a[scores={maddons.mana=0},tag=maddons.usingPurityOrb] at @s run function magical_addons:item/purity_orb/clear
#execute as @a[scores={maddons.mana=0},tag=maddons.usingRegenerationOrb] at @s run function magical_addons:item/regeneration_orb/clear
#execute as @a[scores={maddons.mana=0},tag=maddons.usingStrengtheningOrb] at @s run function magical_addons:item/strengthening_orb/clear
#execute as @a[scores={maddons.mana=25..},nbt={SelectedItem:{tag:{AgilityOrb:1}}}] at @s run function magical_addons:item/agility_orb/effect
#execute as @a[scores={maddons.mana=25..},nbt={SelectedItem:{tag:{PurityOrb:1}}}] at @s run function magical_addons:item/purity_orb/effect
#execute as @a[scores={maddons.mana=25..},nbt={SelectedItem:{tag:{RegenerationOrb:1}}}] at @s run function magical_addons:item/regeneration_orb/effect
#execute as @a[scores={maddons.mana=25..},nbt={SelectedItem:{tag:{StrengtheningOrb:1}}}] at @s run function magical_addons:item/strengthening_orb/effect
#execute as @a[scores={maddons.mana=25..},nbt={Inventory:[{Slot:-106b,tag:{AgilityOrb:1}}]}] at @s run function magical_addons:item/agility_orb/effect
#execute as @a[scores={maddons.mana=25..},nbt={Inventory:[{Slot:-106b,tag:{PurityOrb:1}}]}] at @s run function magical_addons:item/purity_orb/effect
#execute as @a[scores={maddons.mana=25..},nbt={Inventory:[{Slot:-106b,tag:{RegenerationOrb:1}}]}] at @s run function magical_addons:item/regeneration_orb/effect
#execute as @a[scores={maddons.mana=25..},nbt={Inventory:[{Slot:-106b,tag:{StrengtheningOrb:1}}]}] at @s run function magical_addons:item/strengthening_orb/effect

## block
execute as @e[type=item_display,tag=maddons.brewing_stand,tag=!maddons.registered] at @s unless data block ~ ~ ~ {BrewTime:0s} if data block ~ ~ ~ {Items:[{Slot:3b,components:{"minecraft:custom_data":{magical_addons:{brewable:1b}}}}]} run function magical_addons:dev/register_entity {id:"brewing_stand",cmd:"function magical_addons:block/vanilla/brewing_stand/tick"}
execute at @a as @e[type=item_display,tag=maddons.block,tag=!maddons.persistent,distance=..16] at @s run kill
execute at @a as @e[type=item_display,tag=maddons.persistent,distance=..16] at @s run function magical_addons:block/break with entity @s item.components."minecraft:custom_data".magical_addons

## item
execute at @a run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}},distance=..16]

## dev
execute store result score #maddons.block maddons.stat if entity @e[tag=maddons.block]
execute store result score #maddons.entity maddons.stat if entity @e[tag=maddons.entity]
execute store result score #maddons.item maddons.stat if entity @e[type=item]
execute store result score #maddons.magic maddons.stat if entity @e[tag=maddons.magic]
execute store result score #maddons.registered maddons.stat run data get storage maddons.main:registry data.entities
execute store result score #maddons.global maddons.stat if entity @e

# shared
schedule function magical_addons:main/two_seconds 2s