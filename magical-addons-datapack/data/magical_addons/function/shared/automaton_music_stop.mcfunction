# shared:automaton_music_stop
# called by: player:tick

effect give @s darkness 1 0 true
scoreboard players reset @s maddons.automaton.music
scoreboard players reset @s maddons.automaton.music_track
stopsound @s hostile magical_addons:music.boss.intro
stopsound @s hostile magical_addons:music.boss.phase1
stopsound @s hostile magical_addons:music.boss.phase2
stopsound @s hostile magical_addons:music.boss.phase3
tag @s remove maddons.boss.automaton