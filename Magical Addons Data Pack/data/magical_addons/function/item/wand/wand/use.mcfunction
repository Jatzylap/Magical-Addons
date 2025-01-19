# item:wand/wand/use
# called by: item:wand/mainhand, item:wand/offhand

execute anchored eyes run summon marker ^ ^ ^ {Tags:[maddons.wand]}
playsound magical_addons:item.generic.spell.cast player @a ~ ~ ~ 1
data modify entity @n[tag=maddons.wand,type=marker] Rotation set from entity @s Rotation
data modify entity @n[tag=maddons.wand,type=marker] data.UUID set from entity @s UUID
data modify entity @n[tag=maddons.wand,type=marker] data.temp.UUID set from entity @s UUID
scoreboard players remove @s[gamemode=!creative,scores={maddons.mana=0..}] maddons.mana 10
execute as @n[tag=maddons.wand,type=marker] at @s run function magical_addons:dev/register_entity {id:"wand",cmd:"function magical_addons:item/wand/wand/loop"}