# entity:sculk_spider/summon
# called by: <dev>

## Errors
execute store result score #maddons.shared.difficulty maddons.temp run difficulty
execute if score #maddons.shared.difficulty maddons.temp matches 0 run return run tellraw @s ["",{"text":"This entity cannot be summoned in peaceful difficulty!","color":"red"}]

## Summon
summon cave_spider ~ ~ ~ {Silent:1,CustomName:'{"text":"Sculk Spider"}',DeathLootTable:"magical_addons:entities/sculk_spider",Health:64.0,attributes:[{id:knockback_resistance,base:1.0d},{id:jump_strength,base:0.5d},{id:movement_speed,base:0.35d},{id:fall_damage_multiplier,base:0.0},{id:max_health,base:64.0},{id:scale,base:1.3d},{id:burning_time,base:0.0}],active_effects:[{id:"invisibility",amplifier:-1,duration:-1,show_particles:0b},{id:"fire_resistance",amplifier:-1,duration:-1,show_particles:0b}],Tags:["maddons.sculk_spider","maddons.custom_step_sound","maddons.vehicle","maddons.egg_sack"],Passengers:[{id:"marker",Tags:[maddons.sculk_spider,maddons.step_sound],data:{sound_id:"entity.spider.step"}},{id:"item_display",item_display:"head",teleport_duration:3,shadow_strength:1.5,shadow_radius:0.75,view_range:300f,Tags:["maddons.sculk_spider","maddons.body","maddons.entity"],item:{count:1,id:"potion",components:{item_model:"magical_addons:entity/sculk_spider",custom_data:{magical_addons:{colors:[[0.,0.0812,0.]]}},custom_model_data:{floats:[0,0],strings:["body","ground"],colors:[[0.,0.0812,0.]]}}},Passengers:[{id:"item_display",item_display:"head",teleport_duration:3,view_range:300f,Tags:["maddons.sculk_spider","maddons.head"],item:{count:1,id:"potion",components:{item_model:"magical_addons:entity/sculk_spider",custom_data:{magical_addons:{colors:[[0.,0.0812,0.]]}},custom_model_data:{floats:[0,0],strings:["head","ground"],colors:[[0.,0.0812,0.]]}}}}]}]}

## NBT
$execute as @n[type=cave_spider,tag=maddons.vehicle,tag=maddons.sculk_spider,tag=!maddons.summoned] at @s run function magical_addons:entity/sculk_spider/set_nbt {nbt:"$(nbt)"}