# item:sparkstone_orb/break
# called by: item:sparkstone_orb/loop

playsound entity.item.break player @a ~ ~ ~ 1

particle item{item:{id:"recovery_compass",components:{item_model:"magical_addons:sparkstone_orb"}}} ~ ~1 ~ 0 0 0 .1 9

$item replace entity @s $(slot) with air