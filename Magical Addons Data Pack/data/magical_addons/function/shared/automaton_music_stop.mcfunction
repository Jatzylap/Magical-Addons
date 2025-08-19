# shared:automaton_music_stop
# called by: player:loop

weather clear
scoreboard players reset @s maddons.automaton.music
scoreboard players reset @s maddons.automaton.music_track
stopsound @s master magical_addons:music.boss.intro
stopsound @s master magical_addons:music.boss.phase1
stopsound @s master magical_addons:music.boss.phase2
stopsound @s master magical_addons:music.boss.phase3
tag @s remove maddons.boss.automaton