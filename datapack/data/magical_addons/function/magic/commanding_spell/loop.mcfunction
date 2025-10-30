# magic:commanding_spell/loop
# called by: player:tick

$function magical_addons:magic/commanding_spell/distance with storage magical_addons:data data.commanding_spells[{UUID:$(UUID)}]
playsound block.beacon.ambient player @a ~ ~ ~ 0.5 2
kill @e[type=marker,tag=maddons.commanding_spell_tracker]