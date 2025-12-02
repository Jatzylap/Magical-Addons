# shared:automaton_music_start
# called by: player:tick

## Play intro once & stop other music
execute unless score @s maddons.automaton.music matches 0.. run stopsound @s music
execute unless score @s maddons.automaton.music matches 0.. run stopsound @s hostile magical_addons:music.boss.intro
execute unless score @s maddons.automaton.music matches 0.. run stopsound @s hostile magical_addons:music.boss.phase1
execute unless score @s maddons.automaton.music matches 0.. run stopsound @s hostile magical_addons:music.boss.phase2
execute unless score @s maddons.automaton.music matches 0.. run stopsound @s hostile magical_addons:music.boss.phase3
execute unless score @s maddons.automaton.music matches 0.. run playsound magical_addons:music.boss.intro music @s ~ ~ ~

## Music timer
scoreboard players add @s maddons.automaton.music 1

## Update track
execute if predicate magical_addons:shared/update_automaton_music run function magical_addons:shared/automaton_music_loop