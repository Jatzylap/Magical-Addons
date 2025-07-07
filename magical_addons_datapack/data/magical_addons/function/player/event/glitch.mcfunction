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
playsound magical_addons:ambient.echo.loop.glitch ambient @s ~ ~ ~ 1000
execute if biome ~ ~ ~ magical_addons:silent_grove run fillbiome ~-5 ~-5 ~-5 ~5 ~5 ~5 magical_addons:silent_grove_red_sky
execute if biome ~ ~ ~ magical_addons:hallow_lands run fillbiome ~-5 ~-5 ~-5 ~5 ~5 ~5 magical_addons:hallow_lands_red_sky
execute if biome ~ ~ ~ magical_addons:old_pale_garden run fillbiome ~-5 ~-5 ~-5 ~5 ~5 ~5 magical_addons:old_pale_garden_red_sky
effect give @s night_vision 1 0 true