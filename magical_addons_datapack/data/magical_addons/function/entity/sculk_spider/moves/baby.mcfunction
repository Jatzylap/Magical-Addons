# entity:sculk_spider/moves/baby
# called by: entity:sculk_spider/hurt

playsound minecraft:block.sniffer_egg.hatch hostile @a ~ ~ ~ 1 2
function magical_addons:entity/sculk_spider/summon {nbt:"Tags:[maddons.baby,maddons.vehicle,maddons.sculk_spider],attributes:[{id:scale,base:0.65}]"}
execute if predicate magical_addons:shared/25_percent run function magical_addons:entity/sculk_spider/summon {nbt:"Tags:[maddons.baby,maddons.vehicle,maddons.sculk_spider,maddons.custom_step_sound],attributes:[{id:scale,base:0.65}]"}
execute if predicate magical_addons:shared/25_percent run function magical_addons:entity/sculk_spider/summon {nbt:"Tags:[maddons.baby,maddons.vehicle,maddons.sculk_spider,maddons.custom_step_sound],attributes:[{id:scale,base:0.65}]"}
tag @s remove maddons.egg_sack