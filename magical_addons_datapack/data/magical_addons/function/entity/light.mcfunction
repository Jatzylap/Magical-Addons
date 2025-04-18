# entity:light
# called by: entity:sculk_spider/check_local

execute if predicate magical_addons:block/light/0 run data merge entity @s {brightness:{sky:0,block:0}}
execute if predicate magical_addons:block/light/1 run data merge entity @s {brightness:{sky:0,block:1}}
execute if predicate magical_addons:block/light/2 run data merge entity @s {brightness:{sky:0,block:2}}
execute if predicate magical_addons:block/light/3 run data merge entity @s {brightness:{sky:0,block:3}}
execute if predicate magical_addons:block/light/4 run data merge entity @s {brightness:{sky:0,block:4}}
execute if predicate magical_addons:block/light/5 run data merge entity @s {brightness:{sky:0,block:5}}
execute if predicate magical_addons:block/light/6 run data merge entity @s {brightness:{sky:0,block:6}}
execute if predicate magical_addons:block/light/7 run data merge entity @s {brightness:{sky:0,block:7}}
execute if predicate magical_addons:block/light/8 run data merge entity @s {brightness:{sky:0,block:8}}
execute if predicate magical_addons:block/light/9 run data merge entity @s {brightness:{sky:0,block:9}}
execute if predicate magical_addons:block/light/10 run data merge entity @s {brightness:{sky:0,block:10}}
execute if predicate magical_addons:block/light/11 run data merge entity @s {brightness:{sky:0,block:11}}
execute if predicate magical_addons:block/light/12 run data merge entity @s {brightness:{sky:0,block:12}}
execute if predicate magical_addons:block/light/13 run data merge entity @s {brightness:{sky:0,block:13}}
execute if predicate magical_addons:block/light/14 run data merge entity @s {brightness:{sky:0,block:14}}
execute if predicate magical_addons:block/light/15 run data merge entity @s {brightness:{sky:0,block:15}}

execute if predicate magical_addons:block/skylit run data modify entity @s brightness.sky set value 15