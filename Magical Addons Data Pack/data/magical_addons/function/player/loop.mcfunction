# player:loop
# called by: main:tick_list

## dimension
execute if dimension minecraft:overworld run function magical_addons:dimension/overworld/loop
execute if dimension minecraft:the_nether run function magical_addons:dimension/the_nether/loop
execute if dimension minecraft:the_end run function magical_addons:dimension/the_end/loop
execute if dimension minecraft:the_achlys run function magical_addons:dimension/the_achlys/loop
execute if dimension minecraft:the_aether run function magical_addons:dimension/the_aether/loop

## armour
#tag @s[nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{CustomModelData:1}},{Slot:101b,id:"minecraft:netherite_leggings",tag:{CustomModelData:1}},{Slot:102b,id:"minecraft:netherite_chestplate",tag:{CustomModelData:1}},{Slot:103b,id:"minecraft:netherite_helmet",tag:{CustomModelData:1}}]}] add maddons.aa
tag @s[tag=!maddons.aa,scores={maddons.mana=..199}] remove maddons.fullmana
tag @s[tag=maddons.aa,scores={maddons.mana=..399}] remove maddons.fullmana
#tag @s[tag=maddons.ocm,tag=!maddons.aa] remove maddons.ocm
#effect give @s[nbt={Inventory:[{Slot:101b,id:"minecraft:netherite_leggings",tag:{AncientArmour:1}}]}] slow_falling 1 0 true
#effect give @s[nbt={Inventory:[{Slot:102b,id:"minecraft:netherite_chestplate",tag:{AncientArmour:1}}]}] strength 1 0 true
#effect give @s[nbt={Inventory:[{Slot:103b,id:"minecraft:netherite_helmet",tag:{AncientArmour:1}}]}] conduit_power 1 0 true
execute if entity @s[tag=!maddons.aa,scores={maddons.mana=200..}] run tag @s add maddons.fullmana
execute if entity @s[tag=maddons.aa,scores={maddons.mana=400..}] run tag @s add maddons.fullmana
#execute if entity @s[tag=maddons.aa] run function magical_addons:item/ancient_armour/cosmetics

## self
tag @s[gamemode=!survival,gamemode=!adventure] add maddons.invul
tag @s[gamemode=!creative,gamemode=!spectator] remove maddons.invul
#execute if score @s maddons.drop_item matches 1 as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{maddons.mana_item:1}}}}] at @s run function magical_addons:shared/tag_item_drop

## wand
#execute if score @s maddons.windrodSpell matches 0.. run function magical_addons:item/wind_rod/twister/caster
#execute if score @s maddons.icerodSpell matches 0.. run function magical_addons:item/ice_rod/0_freezing_energy/caster
#execute if score @s maddons.firerodSpell matches 0.. run function magical_addons:item/fire_rod/0_flaming_energy/caster
#execute if score @s maddons.waterrodSpell matches 0.. run function magical_addons:item/water_rod/0_aqua_energy/caster
#execute if score @s maddons.cbladeSpell matches 0.. run function magical_addons:item/chaos_sword/0_chaos/caster
#execute if score @s maddons.lbladeSpell matches 0.. run function magical_addons:item/light_sword/0_enlightenment/caster
#execute if entity @s[tag=maddons.usingblockingRod] run function magical_addons:item/blocking_rod/0_barrier/caster
#execute if entity @s[tag=maddons.usingtransportRod] run function magical_addons:item/commanding_rod/0_force_energy/caster
#execute if entity @s[nbt={SelectedItem:{tag:{SparkstonePickaxe:1}}}] run function magical_addons:item/sparkstone_pickaxe/efficiency/caster
#execute if entity @s[tag=!kt.castPickaxe,nbt={SelectedItem:{tag:{SparkstonePickaxe:1}}}] run function magical_addons:item/sparkstone_pickaxe/right_clicked
#execute if entity @s[tag=kt.Ultim,nbt={DeathTime:19s}] run function kt.shared:ultimate_stop
#execute if score @s maddons.cooldown matches 1.. run scoreboard players remove @s maddons.cooldown 1
#execute if entity @s[scores={maddons.mana=..-1}] run scoreboard players set @s maddons.mana 0
#execute if entity @s[gamemode=creative,tag=!maddons.fullmana] run scoreboard players set @s maddons.mana 200
#execute if entity @s[tag=kt.s3tup_t] positioned as @e[type=marker,tag=kt.s3tup,sort=nearest,limit=1,dy=1] run tp ~ ~ ~
#execute if entity @s[tag=kt.s3tup_ft] run tp @s @e[type=marker,tag=kt.s3tup_f,sort=nearest,limit=1,dy=1]

## portal
execute if score @s maddons.portal_time_check matches 1 if entity @n[type=item_display,tag=maddons.aether_portal,distance=..1.6] run function magical_addons:player/event/overlay_aether_portal

#tag @s remove kt.player_dream_i
#execute if entity @s[tag=kt.player_dream,nbt=!{Dimension:"minecraft:the_aether"}] run playsound ambient.aether.mood ambient @s ~ ~ ~ 1
#execute if entity @s[tag=kt.player_dream,nbt=!{Dimension:"minecraft:the_aether"}] run tag @s add kt.restore
#execute if entity @s[tag=kt.player_dream,nbt=!{Dimension:"minecraft:the_aether"}] run tag @s remove kt.player_dream

## entity
#execute at @s[team=kt.player] if predicate kt.shared:5_percent on vehicle at @s[tag=kt.dragon,tag=!kt.dragon_t,nbt=!{NoAI:1b},scores={kt.dragon_flap=9}] run function kt.mob:dragon/tame
#execute at @s[team=kt.player,nbt=!{RootVehicle:{Entity:{Tags:[kt.dragon_t]}}},nbt={RootVehicle:{Entity:{Tags:[kt.dragon]}}}] if entity @e[dy=-1,type=phantom,tag=kt.dragon,scores={kt.cooldown=99}] run ride @s dismount
#tag @s[nbt=!{Dimension:"minecraft:the_echo"},tag=kt.echoman_victim] remove kt.echoman_victim
#execute if dimension the_echo at @s[tag=kt.echoman_victim] if entity @e[distance=..150,type=item_display,tag=kt.echoman_rage,tag=kt.echoman_angry,tag=!eyes,scores={kt.cooldown=130..}] run stopsound @s music music.echo
#execute if dimension the_echo at @s[tag=kt.echoman_victim] if predicate kt.shared:25_percent if entity @e[distance=..150,type=item_display,tag=kt.echoman_rage,tag=kt.echoman_angry,tag=!eyes,scores={kt.cooldown=130..}] run playsound ambient.echo.loop ambient @s ~ ~ ~ 10000000
#execute if dimension the_echo unless entity @e[type=interaction,tag=kt.echoman,distance=..150] run tag @s remove kt.echoman_victim
#execute if dimension the_echo at @s[gamemode=!creative,gamemode=!spectator] if entity @e[distance=..150,type=interaction,tag=kt.echoman,tag=!kt.echoman_angry,tag=!kt.echoman_rage] anchored eyes positioned ^ ^ ^1 run function kt.mob:echoman/ray

## item
#execute if items entity @s weapon.mainhand minecraft:chiseled_bookshelf[!minecraft:custom_data~{maddons.block_sound:1b}] run item modify entity @s weapon.mainhand magical_addons:item/chiseled_bookshelf_mainhand
#execute if items entity @s weapon.offhand minecraft:chiseled_bookshelf[!minecraft:custom_data~{maddons.block_sound:1b}] run item modify entity @s weapon.offhand magical_addons:item/chiseled_bookshelf_offhand

## block
execute if entity @s[scores={maddons.walk1=1..}] run function magical_addons:player/event/walk_on_block
execute if entity @s[scores={maddons.sprint1=1..}] run function magical_addons:player/event/sprint_on_block
execute as @e[type=!#magical_addons:invulnerable,type=!player,nbt=!{Motion:[0.0d,0.0d,0.0d]},distance=..16] at @s run function magical_addons:entity/step
execute store result storage maddons.player:temp data.target_block.x int 1 run scoreboard players get @s maddons.ray.x
execute store result storage maddons.player:temp data.target_block.y int 1 run scoreboard players get @s maddons.ray.y
execute store result storage maddons.player:temp data.target_block.z int 1 run scoreboard players get @s maddons.ray.z
execute anchored eyes positioned ^ ^ ^ run function magical_addons:block/mine_start
function magical_addons:block/break_start with storage maddons.player:temp data.target_block

## shared
clear @s *[custom_data~{magical_addons:{gui:1}}]

## dev
tellraw @s[tag=maddons.dev] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n-------------------------------\n"},{"text":"Custom Blocks: ","color":"green"},{"score":{"name":"#maddons.block","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill Blocks]","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=maddons.block]"}},{"text":"\n"},{"text":"Custom Entities: ","color":"green"},{"score":{"name":"#maddons.entity","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=maddons.entity] at @s run function magical_addons:entity/kill"}},{"text":"\n"},{"text":"Custom Spells: ","color":"green"},{"score":{"name":"#maddons.magic","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=maddons.magic,type=!player]"}},{"text":"\n\n"},{"text":"Total Items: ","color":"aqua"},{"score":{"name":"#maddons.item","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[type=item]"}},{"text":"\n"},{"text":"Registered Mobs: ","color":"aqua"},{"score":{"name":"#maddons.entity_spawn","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=maddons.spawn]"}},{"text":"\n"},{"text":"Total Entities: ","color":"aqua"},{"score":{"name":"#maddons.global","objective":"maddons.stat"},"color":"yellow"},{"text":" [Kill All]","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[type=!player]"}},{"text":"\n-------------------------------"}]
execute if score @s maddons.developer_mode matches 1.. run function magical_addons:dev/toggle_dev_mode
execute if score @s maddons.get_items matches 1.. run function magical_addons:dev/toggle_get_items