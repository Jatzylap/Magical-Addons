# entity:sparkstone_lingering_potion/cloud_tick
# called by: main:tick_cycle
# registered by: entity:sparkstone_lingering_potion/tick

tag @s add maddons.magic

data merge entity @s {Duration:600,Radius:3f,potion_contents:{custom_color:47871}}

scoreboard players add @a[distance=..2] maddons.mana 50