# magic:commanding_spell/stop
# called by: magic:commanding_spell/distance

execute if items entity @s weapon.offhand *[custom_data~{magical_addons:{id:"ancient_staff"}},custom_model_data={strings:["commanding"]}] unless items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"ancient_staff"}},custom_model_data={strings:["commanding"]}] run function magical_addons:item/ancient_staff/cast/spell {hand:"offhand",spell:"commanding_spell",nbt:"equipment.offhand"}
execute if items entity @s weapon.mainhand *[custom_data~{magical_addons:{id:"ancient_staff"}},custom_model_data={strings:["commanding"]}] run function magical_addons:item/ancient_staff/cast/spell {hand:"mainhand",spell:"commanding_spell",nbt:"SelectedItem"}

tag @s remove maddons.using_commanding_spell
tag @s remove maddons.commanding_spell.stop

playsound block.beacon.power_select player @a ~ ~ ~ 0.5 2

$$(cmd1)
$$(cmd2)