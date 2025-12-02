# item:ancient_staff/loop
# called by: player:tick

execute if entity @n[tag=maddons.magic,distance=..2.5] run function magical_addons:item/ancient_staff/absorb_spell

