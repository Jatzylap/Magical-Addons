execute align xyz positioned ~.5 ~.5 ~.5 run kill @e[tag=maddons.block,distance=...5]

## Gravitite ore exception
execute if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"gravitite_ore"}}}} run return run summon falling_block ~ ~ ~ {NoGravity:1b,DropItem:0b,Time:-2147483648,data:{magical_addons:{tick_cmd:"function magical_addons:block/custom/gravitite_ore/tick"}},Tags:[maddons.entity.suspend_tick,maddons.entity.tickable,maddons.gravitite_ore,maddons.gravitite,maddons.falling_block],BlockState:{Name:'stone_slab',Properties:{type:double}}}

## Other
$execute align xyz positioned ~.5 ~.5 ~.5 run summon armor_stand ~ ~ ~ {data:{magical_addons:{id:"$(id)"}},DisabledSlots:-1,Small:1b,Passengers:[{id:item_display,item:{id:"spawner",components:{item_model:"magical_addons:$(id)"}}}],Invisible:1b,Tags:[maddons.falling_block]}