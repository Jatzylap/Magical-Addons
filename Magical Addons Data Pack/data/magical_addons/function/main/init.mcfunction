# main:init
# called by: #minecraft:load

## Config
team add maddons.player
gamerule universalAnger true
gamerule forgiveDeadPlayers false
gamerule commandBlockOutput false
gamerule maxCommandChainLength 2147483647
gamerule maxCommandForkCount 2147483647
gamerule commandModificationBlockLimit 2147483647
bossbar add magical_addons:effect/lucidity "\uE463"
bossbar set magical_addons:effect/lucidity name "\uE463"
bossbar add magical_addons:entity/automaton "Ancient Automaton"
bossbar set magical_addons:entity/automaton name "Ancient Automaton"
bossbar set magical_addons:entity/automaton color yellow
bossbar add magical_addons:entity/herobrine "Herobrine"
bossbar set magical_addons:entity/herobrine name "Herobrine"
bossbar set magical_addons:entity/herobrine color white
bossbar add magical_addons:entity/sparkstone_king "Sparkstone King"
bossbar set magical_addons:entity/sparkstone_king name "Sparkstone King"
bossbar set magical_addons:entity/sparkstone_king color blue
execute in magical_addons:---/void run forceload add 0 0
execute in magical_addons:---/void run fill 0 0 0 0 1 0 shulker_box keep

## Objectives
scoreboard objectives add maddons.leave_game custom:leave_game
scoreboard objectives add maddons.play_time custom:play_time
scoreboard objectives add maddons.drop_item custom:drop
scoreboard objectives add maddons.horn used:goat_horn
scoreboard objectives add maddons.snowball used:snowball
scoreboard objectives add maddons.wfoas used:warped_fungus_on_a_stick
scoreboard objectives add maddons.walk1 custom:walk_one_cm
scoreboard objectives add maddons.walk2 custom:walk_one_cm
scoreboard objectives add maddons.sprint1 custom:sprint_one_cm
scoreboard objectives add maddons.sprint2 custom:sprint_one_cm
scoreboard objectives add maddons.jump custom:jump
scoreboard objectives add maddons.mana dummy
scoreboard objectives add maddons.x dummy
scoreboard objectives add maddons.y dummy
scoreboard objectives add maddons.z dummy
scoreboard objectives add maddons.x1 dummy
scoreboard objectives add maddons.y1 dummy
scoreboard objectives add maddons.z1 dummy
scoreboard objectives add maddons.x2 dummy
scoreboard objectives add maddons.y2 dummy
scoreboard objectives add maddons.z2 dummy
scoreboard objectives add maddons.chunk.x dummy
scoreboard objectives add maddons.chunk.y dummy
scoreboard objectives add maddons.chunk.z dummy
scoreboard objectives add maddons.chunk.x_ dummy
scoreboard objectives add maddons.chunk.y_ dummy
scoreboard objectives add maddons.chunk.z_ dummy
scoreboard objectives add maddons.dream.x dummy
scoreboard objectives add maddons.dream.y dummy
scoreboard objectives add maddons.dream.z dummy
scoreboard objectives add maddons.constant dummy
scoreboard objectives add maddons.temp dummy
scoreboard objectives add maddons.developer_mode trigger
scoreboard objectives add maddons.get_items trigger
scoreboard objectives add maddons.horn_cooldown dummy
scoreboard objectives add maddons.successCount dummy
scoreboard objectives add maddons.glitch dummy
scoreboard objectives add maddons.soul_bottle dummy
scoreboard objectives add maddons.wizarding_table_page dummy
scoreboard objectives add maddons.angry_chicken dummy
scoreboard objectives add maddons.zigzag_amplitude_x dummy
scoreboard objectives add maddons.zigzag_amplitude_y dummy
scoreboard objectives add maddons.move dummy
scoreboard objectives add maddons.damage dummy
scoreboard objectives add maddons.death dummy
scoreboard objectives add maddons.scale dummy
scoreboard objectives add maddons.animation dummy
scoreboard objectives add maddons.rotation dummy
scoreboard objectives add maddons.irotation dummy
scoreboard objectives add maddons.scan_range dummy
scoreboard objectives add maddons.iscan_range dummy
scoreboard objectives add maddons.craft dummy
scoreboard objectives add maddons.cycle_display_rot dummy
scoreboard objectives add maddons.stat dummy
scoreboard objectives add maddons.registry dummy
scoreboard objectives add maddons.ray.x dummy
scoreboard objectives add maddons.ray.y dummy
scoreboard objectives add maddons.ray.z dummy
scoreboard objectives add maddons.portal_time dummy
scoreboard objectives add maddons.portal_time_check dummy
scoreboard objectives add maddons.portal_travel dummy
scoreboard objectives add maddons.portal_overlay dummy
scoreboard objectives add maddons.reload_sub_chunks dummy
scoreboard objectives add maddons.step dummy
scoreboard objectives add maddons.stepping dummy

#scoreboard objectives add maddons.wandSpell dummy
#scoreboard objectives add maddons.wandMax dummy
#scoreboard objectives add maddons.cooldown dummy
#scoreboard objectives add maddons.tridentSpell dummy
#scoreboard objectives add maddons.tridentMax dummy
#scoreboard objectives add maddons.castingUlt dummy
#scoreboard objectives add maddons.wandUlt dummy
#scoreboard objectives add maddons.launch dummy
#scoreboard objectives add maddons.levitate dummy
#scoreboard objectives add maddons.portkey dummy

#scoreboard objectives add nt.staffSpell dummy
#scoreboard objectives add nt.staffMax dummy
#scoreboard objectives add nt.staffWind dummy
#scoreboard objectives add nt.castingUlt dummy
#scoreboard objectives add nt.fswordSpell dummy
#scoreboard objectives add nt.fswordMax dummy
#scoreboard objectives add nt.castingUlt2 dummy
#scoreboard objectives add nt.estaffSpell dummy
#scoreboard objectives add nt.estaffMax dummy
#scoreboard objectives add nt.castingUlt3 dummy
#scoreboard objectives add nt.astaffSpell dummy
#scoreboard objectives add nt.astaffMax dummy
#scoreboard objectives add nt.castingUlt4 dummy
#scoreboard objectives add nt.castingUlt5 dummy
#scoreboard objectives add nt.pwand dummy
#scoreboard objectives add hw.wandSpell dummy
#scoreboard objectives add hw.wandMax dummy
#scoreboard objectives add hw.teptUlt dummy
#scoreboard objectives add maddons.boss1_move dummy
#scoreboard objectives add maddons.boss1_anim dummy
#scoreboard objectives add maddons.boss1_atk dummy
#scoreboard objectives add maddons.boss1_hurt dummy
#scoreboard objectives add maddons.boss1_music dummy
#scoreboard objectives add maddons.boss1_health dummy
#scoreboard objectives add maddons.boss2_atk dummy
#scoreboard objectives add maddons.boss2_hurt dummy
#scoreboard objectives add maddons.boss2_music dummy
#scoreboard objectives add maddons.boss2_health dummy
#scoreboard objectives add maddons.boss2_stage dummy
#scoreboard objectives add maddons.boss2_death dummy
#scoreboard objectives add maddons.dragon_flap dummy
#scoreboard objectives add maddons.dragon_bite dummy
#scoreboard objectives add maddons.dragon_collision dummy
#scoreboard objectives add maddons.boss_spawn dummy
#scoreboard objectives add maddons.preUltim dummy
#scoreboard objectives add nt.S_D dummy
#scoreboard objectives add nt.id dummy
#scoreboard objectives add nt.x dummy
#scoreboard objectives add nt.y dummy
#scoreboard objectives add nt.z dummy
#scoreboard objectives add nt.fswordCooldown dummy
#scoreboard objectives add nt.tridentCoolDown dummy
#scoreboard objectives add nt.wrodCooldown dummy
#scoreboard objectives add nt.irodCooldown dummy
#scoreboard objectives add nt.icerodSpell dummy
#scoreboard objectives add nt.firerodSpell dummy
#scoreboard objectives add nt.waterrodSpell dummy
#scoreboard objectives add nt.windrodSpell dummy
#scoreboard objectives add nt.lbladeSpell dummy
#scoreboard objectives add nt.ebladeSpell dummy
#scoreboard objectives add nt.estaffSpikes dummy
#scoreboard objectives add nt.cbladeSpell dummy
#scoreboard objectives add nt.transportSpell dummy
#scoreboard objectives add nt.blockingSpell dummy
#scoreboard objectives add nt.cursedSpell dummy
#scoreboard objectives add nt.castingUlt6 dummy
#scoreboard objectives add nt.sstaffSpell dummy
#scoreboard objectives add nt.sstaffMax dummy
#scoreboard objectives add nt.sparkstone_pickaxe dummy
#scoreboard objectives add nt.pickaxeSpell dummy
#scoreboard objectives add nt.pick_stun dummy
#scoreboard objectives add nt.pick_rot dummy
#scoreboard objectives add nt.geryonTimer dummy
#scoreboard objectives add nt.trident_x dummy
#scoreboard objectives add nt.trident_y dummy
#scoreboard objectives add nt.trident_z dummy
#scoreboard objectives add nt.wormhole_x dummy
#scoreboard objectives add nt.wormhole_y dummy
#scoreboard objectives add nt.wormhole_z dummy
#scoreboard objectives add nt.undergroundtravel_x dummy
#scoreboard objectives add nt.undergroundtravel_y dummy
#scoreboard objectives add nt.undergroundtravel_z dummy
#scoreboard objectives add nt.fieryrecall_x dummy
#scoreboard objectives add nt.fieryrecall_y dummy
#scoreboard objectives add nt.fieryrecall_z dummy
#scoreboard objectives add nt.bifrost_x dummy
#scoreboard objectives add nt.bifrost_y dummy
#scoreboard objectives add nt.bifrost_z dummy
#scoreboard objectives add nt.sonictravel_x dummy
#scoreboard objectives add nt.sonictravel_y dummy
#scoreboard objectives add nt.sonictravel_z dummy
#scoreboard objectives add nt.wand_x dummy
#scoreboard objectives add nt.wand_y dummy
#scoreboard objectives add nt.wand_z dummy

## Constants
scoreboard players set #PI maddons.constant 314159265
scoreboard players set #-16 maddons.constant -16
scoreboard players set #-1 maddons.constant -1
scoreboard players set #0 maddons.constant 0
scoreboard players set #1 maddons.constant 1
scoreboard players set #2 maddons.constant 2
scoreboard players set #4 maddons.constant 4
scoreboard players set #10 maddons.constant 10
scoreboard players set #16 maddons.constant 16
scoreboard players set #20 maddons.constant 20
scoreboard players set #32 maddons.constant 32
scoreboard players set #45 maddons.constant 45
scoreboard players set #48 maddons.constant 48
scoreboard players set #64 maddons.constant 64
scoreboard players set #100 maddons.constant 100
scoreboard players set #150 maddons.constant 150
scoreboard players set #180 maddons.constant 180
scoreboard players set #200 maddons.constant 200
scoreboard players set #220 maddons.constant 220
scoreboard players set #240 maddons.constant 240
scoreboard players set #250 maddons.constant 250
scoreboard players set #256 maddons.constant 256
scoreboard players set #500 maddons.constant 500
scoreboard players set #1000 maddons.constant 1000
scoreboard players set #24000 maddons.constant 24000
scoreboard players set #10000000 maddons.constant 10000000
scoreboard players set #450000000 maddons.constant 450000000
scoreboard players set #900000000 maddons.constant 900000000

## Load
schedule function magical_addons:main/first 65
schedule function magical_addons:main/second 115
schedule function magical_addons:main/third 116
schedule function magical_addons:main/fourth 117
schedule function magical_addons:main/fifth 118
schedule function magical_addons:main/sixth 119
schedule function magical_addons:main/seventh 120
schedule function magical_addons:main/final 121

## Reset
advancement revoke @a from magical_addons:---/main/root
advancement revoke @a from magical_addons:---/block/root
advancement revoke @a from magical_addons:---/entity/root
advancement revoke @a from magical_addons:---/dungeon/root
advancement revoke @a from magical_addons:---/shared/root
advancement revoke @a from magical_addons:---/dimension/root
advancement revoke @a from magical_addons:---/item/root
advancement revoke @a from magical_addons:---/player/root
advancement revoke @a from magical_addons:---/recipe/root
data modify storage maddons.player:temp data set value {}
team modify maddons.player seeFriendlyInvisibles false
execute as @a run scoreboard players add @s maddons.mana 0
execute as @a run scoreboard players enable @a maddons.developer_mode
execute as @a run scoreboard players enable @a maddons.get_items

## Register players
tag @a add maddons.player
execute as @a run function magical_addons:dev/register_entity {id:"player",cmd:"function magical_addons:player/loop"}