# block:wizarding_table/disengage
# called by: block:wizarding_table/gui/reset

playsound magical_addons:item.orb.break block @a ~ ~ ~ 1 .6
playsound magical_addons:block.sparkstone.chime block @a ~ ~ ~ 1 .6
particle firework ~.5 ~ ~ 0 0 0 .1 2
particle firework ~-.5 ~ ~ 0 0 0 .1 2
particle firework ~ ~ ~.5 0 0 0 .1 2
particle firework ~ ~ ~-.5 0 0 0 .1 2
scoreboard players reset @s maddons.damage
scoreboard players reset @s maddons.wizarding_table_page
tag @s remove on
tag @s add off
data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 0
function magical_addons:dev/unregister_entity with block ~ ~ ~ components."minecraft:custom_data"
setblock ~ ~ ~ brown_shulker_box{components:{custom_data:{magical_addons:{generated:1b,id:"wizarding_table"}}},lock:{components:{item_name:"§maddons.wizarding_table"}},CustomName:'{"translate":"item.minecraft.wizarding_table"}'}