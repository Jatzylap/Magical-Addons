# shared:automaton_music_start
# called by: player:tick

## Play intro once & stop other music
execute unless score @s maddons.automaton.music matches 0.. run stopsound @s music
execute unless score @s maddons.automaton.music matches 0.. run playsound magical_addons:music.boss.intro hostile @s ~ ~ ~

## Music timer
scoreboard players add @s maddons.automaton.music 1

## Update track
execute if predicate magical_addons:shared/update_automaton_music run function magical_addons:shared/automaton_music_loop