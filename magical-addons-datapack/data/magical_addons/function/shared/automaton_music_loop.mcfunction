# shared:automaton_music_loop
# called by: shared:automaton_music_start

## Reset timer & stop other music
scoreboard players set @s maddons.automaton.music 0
execute if data storage magical_addons:config {disable_custom_boss_music:0b} run stopsound @s music
stopsound @s hostile magical_addons:music.boss.intro
stopsound @s hostile magical_addons:music.boss.phase1
stopsound @s hostile magical_addons:music.boss.phase2
stopsound @s hostile magical_addons:music.boss.phase3

## Play track & Update track number
execute if entity @e[limit=1,tag=maddons.entity,tag=maddons.automaton,tag=maddons.phase1] run playsound magical_addons:music.boss.phase1 hostile @s ~ ~ ~
execute if entity @e[limit=1,tag=maddons.entity,tag=maddons.automaton,tag=maddons.phase1] run return run scoreboard players set @s maddons.automaton.music_track 1
execute if entity @e[limit=1,tag=maddons.entity,tag=maddons.automaton,tag=maddons.phase2] run playsound magical_addons:music.boss.phase2 hostile @s ~ ~ ~
execute if entity @e[limit=1,tag=maddons.entity,tag=maddons.automaton,tag=maddons.phase2] run return run scoreboard players set @s maddons.automaton.music_track 2
execute if entity @e[limit=1,tag=maddons.entity,tag=maddons.automaton,tag=maddons.phase3] run playsound magical_addons:music.boss.phase3 hostile @s ~ ~ ~
execute if entity @e[limit=1,tag=maddons.entity,tag=maddons.automaton,tag=maddons.phase3] run scoreboard players set @s maddons.automaton.music_track 3