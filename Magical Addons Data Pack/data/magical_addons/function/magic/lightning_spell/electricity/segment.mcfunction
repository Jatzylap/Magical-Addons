# magic:lightning_spell/electricity/segment
# called by: magic:lightning_spell/electricity/ray

execute store result score @s maddons.zigzag_amplitude_x run random value -3..3
execute store result score @s maddons.zigzag_amplitude_y run random value -3..3

function magical_addons:magic/lightning_spell/electricity/shift