# block:custom/wizarding_table/engage
# called by: block:custom/wizarding_table/interact

tag @s add on
data merge entity @s[predicate=magical_addons:block/skylit] {brightness:{sky:15,block:9}}
data merge entity @s[predicate=!magical_addons:block/skylit] {brightness:{sky:0,block:9}}
setblock ~ ~ ~ barrel[facing=north]{CustomName:'{"translate":"item.minecraft.wizarding_table"}',components:{item_name:'{"translate":"item.minecraft.wizarding_table"}',custom_model_data:{flags:[1]},custom_data:{magical_addons:{id:"wizarding_table"}},Items:[{Slot:9b,id:"stick",count:1,components:{"minecraft:custom_data":{magical_addons:{gui:1},"minecraft:item_model":"air"}}},{Slot:0b,id:"stick",count:1,components:{"minecraft:custom_data":{magical_addons:{gui:1},"minecraft:item_model":"magical_addons:gui/container/wizarding_table"}}}],lock:{components:{item_name:"'§maddons.wizarding_table'"}}}}
function magical_addons:block/custom/wizarding_table/operate