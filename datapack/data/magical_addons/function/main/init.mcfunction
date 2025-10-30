# main:init
# called by: #minecraft:load

## Config
gamerule commandBlockOutput false
gamerule maxCommandChainLength 2147483647
gamerule maxCommandForkCount 2147483647
gamerule commandModificationBlockLimit 2147483647
execute in minecraft:overworld run forceload add -29999999 1600
fill -29999999 16 1600 -29999984 31 1615 air

## Objectives
scoreboard objectives add maddons.leave_game custom:leave_game
scoreboard objectives add maddons.play_time custom:play_time
scoreboard objectives add maddons.walk custom:walk_one_cm
scoreboard objectives add maddons.walk_ custom:walk_one_cm
scoreboard objectives add maddons.sprint custom:sprint_one_cm
scoreboard objectives add maddons.sprint_ custom:sprint_one_cm
scoreboard objectives add maddons.damage_taken custom:damage_taken
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
scoreboard objectives add maddons.constant dummy
scoreboard objectives add maddons.temp dummy
scoreboard objectives add maddons.developer_mode trigger
scoreboard objectives add maddons.successCount dummy
scoreboard objectives add maddons.soul_bottle dummy
scoreboard objectives add maddons.wizarding_table_page dummy
scoreboard objectives add maddons.chicken.anger dummy
scoreboard objectives add maddons.zigzag_amplitude_x dummy
scoreboard objectives add maddons.zigzag_amplitude_y dummy
scoreboard objectives add maddons.move dummy
scoreboard objectives add maddons.idamage dummy
scoreboard objectives add maddons.damage dummy
scoreboard objectives add maddons.max_damage dummy
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
scoreboard objectives add maddons.tick dummy
scoreboard objectives add maddons.ray.x dummy
scoreboard objectives add maddons.ray.y dummy
scoreboard objectives add maddons.ray.z dummy
scoreboard objectives add maddons.reload_sub_chunk dummy
scoreboard objectives add maddons.step dummy
scoreboard objectives add maddons.stepping dummy
scoreboard objectives add maddons.cooldown dummy
scoreboard objectives add maddons.efficiency dummy
scoreboard objectives add maddons.nefficiency dummy
scoreboard objectives add maddons.commanding_spell dummy
scoreboard objectives add maddons.automaton.music dummy
scoreboard objectives add maddons.automaton.music_track dummy
scoreboard objectives add maddons.block.loot_id dummy

## Constants
scoreboard players set #PI maddons.constant 314159265
scoreboard players set #-29999999 maddons.constant -29999999
scoreboard players set #-16 maddons.constant -16
scoreboard players set #-1 maddons.constant -1
scoreboard players set #0 maddons.constant 0
scoreboard players set #1 maddons.constant 1
scoreboard players set #2 maddons.constant 2
scoreboard players set #3 maddons.constant 3
scoreboard players set #4 maddons.constant 4
scoreboard players set #5 maddons.constant 5
scoreboard players set #6 maddons.constant 6
scoreboard players set #7 maddons.constant 7
scoreboard players set #8 maddons.constant 8
scoreboard players set #9 maddons.constant 9
scoreboard players set #10 maddons.constant 10
scoreboard players set #14 maddons.constant 14
scoreboard players set #16 maddons.constant 16
scoreboard players set #20 maddons.constant 20
scoreboard players set #21 maddons.constant 21
scoreboard players set #22 maddons.constant 22
scoreboard players set #23 maddons.constant 23
scoreboard players set #24 maddons.constant 24
scoreboard players set #25 maddons.constant 25
scoreboard players set #32 maddons.constant 32
scoreboard players set #40 maddons.constant 40
scoreboard players set #45 maddons.constant 45
scoreboard players set #48 maddons.constant 48
scoreboard players set #50 maddons.constant 50
scoreboard players set #64 maddons.constant 64
scoreboard players set #80 maddons.constant 80
scoreboard players set #90 maddons.constant 90
scoreboard players set #100 maddons.constant 100
scoreboard players set #150 maddons.constant 150
scoreboard players set #180 maddons.constant 180
scoreboard players set #200 maddons.constant 200
scoreboard players set #220 maddons.constant 220
scoreboard players set #240 maddons.constant 240
scoreboard players set #250 maddons.constant 250
scoreboard players set #255 maddons.constant 255
scoreboard players set #256 maddons.constant 256
scoreboard players set #500 maddons.constant 500
scoreboard players set #1000 maddons.constant 1000
scoreboard players set #1600 maddons.constant 1600
scoreboard players set #2500 maddons.constant 2500
scoreboard players set #24000 maddons.constant 24000
scoreboard players set #250000 maddons.constant 250000
scoreboard players set #453125 maddons.constant 453125
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
data modify storage magical_addons:temp data set value {}
execute as @a run scoreboard players add @s maddons.mana 0
execute as @a run scoreboard players enable @a maddons.developer_mode
execute as @a run scoreboard players enable @a maddons.get_items