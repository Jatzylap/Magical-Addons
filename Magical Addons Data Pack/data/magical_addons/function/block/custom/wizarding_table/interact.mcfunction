# block:custom/wizarding_table/interact
# called by: block:interact

## Off
execute as @s[tag=maddons.wizarding_table,tag=off,tag=!on] run item replace entity @p[advancements={magical_addons:---/block/interact/wizarding_table_off=true},gamemode=!creative,gamemode=!spectator] weapon.mainhand with air
execute if entity @p[advancements={magical_addons:---/block/interact/wizarding_table_off=true}] as @s[tag=maddons.wizarding_table,tag=off,tag=!on] run function magical_addons:block/custom/wizarding_table/engage
stopsound @p[advancements={magical_addons:---/block/interact/wizarding_table_off=true}] block block.chest.locked
title @p[advancements={magical_addons:---/block/interact/wizarding_table_off=true}] actionbar ""

## On + Open
execute if entity @p[advancements={magical_addons:---/block/interact/wizarding_table_on=true}] as @s[tag=maddons.wizarding_table,tag=on,tag=!off] if block ~ ~ ~ barrel[open=true] run function magical_addons:dev/register_entity {id:"wizarding_table",cmd:"function magical_addons:block/custom/wizarding_table/tick"}