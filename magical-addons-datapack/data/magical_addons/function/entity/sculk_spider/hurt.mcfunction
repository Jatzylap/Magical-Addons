# entity:sculk_spider/hurt
# called by: entity:sculk_spider/tick

execute if score @s[tag=!maddons.entity.death,tag=!maddons.entity.silent,tag=!maddons.entity.baby] maddons.hurt matches 9 run playsound entity.spider.hurt hostile @a ~ ~ ~ 1
execute if score @s[tag=!maddons.entity.death,tag=!maddons.entity.silent,tag=maddons.entity.baby] maddons.hurt matches 9 run playsound entity.spider.hurt hostile @a ~ ~ ~ 1.3
execute on vehicle on passengers run item modify entity @s[tag=maddons.bone] contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}