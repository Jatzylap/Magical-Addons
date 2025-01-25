title @s times 0 9 0
stopsound @s music
stopsound @s player
stopsound @s hostile
stopsound @s neutral
stopsound @s record
stopsound @s voice
stopsound @s block
execute store result score @s maddons.glitch run random value 1..9
execute at @s[scores={maddons.glitch=1}] run title @s title ["\uE018"]
execute at @s[scores={maddons.glitch=2}] run title @s title ["\uE019"]
execute at @s[scores={maddons.glitch=3}] run title @s title ["\uE020"]
execute at @s[scores={maddons.glitch=4}] run title @s title ["\uE021"]
execute at @s[scores={maddons.glitch=5}] run title @s title ["\uE022"]
execute at @s[scores={maddons.glitch=6}] run title @s title ["\uE023"]
execute at @s[scores={maddons.glitch=7}] run title @s title ["\uE024"]
execute at @s[scores={maddons.glitch=8}] run title @s title ["\uE025"]
execute at @s[scores={maddons.glitch=9}] run title @s title ["\uE026"]
scoreboard players reset @s maddons.glitch
playsound magical_addons:entity.herobrine.glitch ambient @s ~ ~ ~ 1000