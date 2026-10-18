# magic:commanding_spell/track
# called by: magic:commanding_spell/hit_block, magic:commanding_spell/hit_entity

tag @s add maddons.using_commanding_spell

$data modify storage magical_addons:data data.commanding_spells[{UUID:$(UUID)}].target set value '$(target)'
$data modify storage magical_addons:data data.commanding_spells[{UUID:$(UUID)}].distance set value $(distance)
$attribute $(target) gravity base set 0