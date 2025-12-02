# block:custom/gravitite_ore/fall_up
# called by: block:group/custom/gravitite/fall_up

kill

setblock ~ ~ ~ air

summon falling_block ~ ~ ~ {NoGravity:1,DropItem:0,Time:-2147483648,data:{magical_addons:{tick_cmd:"function magical_addons:block/custom/gravitite_ore/tick"}},Tags:[maddons.entity.tickable,maddons.gravitite_ore],BlockState:{Name:'stone_slab',Properties:{type:double}}}