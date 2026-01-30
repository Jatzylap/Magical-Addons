# entity:sparkstone_golem/summon
# called by: entity:sparkstone_golem/spawn

## Errors
execute store result score #maddons.shared.difficulty maddons.temp run difficulty
execute if score #maddons.shared.difficulty maddons.temp matches 0 run return run tellraw @s ["",{"translate":"arguments.magical_addons.summon.invalid","color":"red"}]

## Summon
summon silverfish ~ ~ ~ {Silent:1,CustomName:{"translate":"entity.magical_addons.sparkstone_golem"},DeathLootTable:"magical_addons:entities/sparkstone_golem",Health:64.0,attributes:[{id:follow_range,base:99.0d},{id:jump_strength,base:0.0d},{id:movement_speed,base:0.0d},{id:fall_damage_multiplier,base:0.0},{id:max_health,base:64.0},{id:scale,base:6.0d},{id:burning_time,base:0.0},{id:attack_damage,base:0.0}],active_effects:[{id:"invisibility",amplifier:-1,duration:-1,show_particles:0b},{id:"fire_resistance",amplifier:-1,duration:-1,show_particles:0b}],Tags:["maddons.sparkstone_golem","maddons.entity","maddons.custom_step_sound","maddons.vehicle"],data:{magical_addons:{sound:"execute at @s as @a run playsound entity.iron_golem.step hostile @a ~ ~ ~ 0.25",sound_time:3}},                                                                            Passengers:[{id:"item_display",Tags:[maddons.root,maddons.entity,maddons.sparkstone_golem],                                                                                                                                      Passengers:[{id:"item_display",data:{magical_addons:{tick_cmd:"function magical_addons:entity/sparkstone_golem/tick",brain_cmd:"function magical_addons:entity/sparkstone_golem/brain"}},item_display:"head",teleport_duration:3,shadow_strength:1.5,shadow_radius:0.75,item:{id:"potion",components:{item_model:"magical_addons:entity/sparkstone_golem",custom_model_data:{flags:[0b]}}},view_range:300f,Tags:["maddons.entity.brain","maddons.entity.ai","maddons.entity","maddons.entity.tickable","maddons.sparkstone_golem"]}]}]}

## NBT
$execute as @n[type=silverfish,tag=maddons.vehicle,tag=maddons.sparkstone_golem,tag=!maddons.entity.summoned] at @s run function magical_addons:entity/sparkstone_golem/set_nbt {nbt:$(nbt)}