# magic:sonic_boom/hit_entity
# called by: magic:sonic_boom/ray

damage @s 15 minecraft:sonic_boom by @n[tag=maddons.spell.caster]
scoreboard players set $strength player_motion.api.launch -10000
execute anchored eyes facing entity @n[tag=maddons.spell.caster] feet run function magical_addons:dev/set_motion_vector {power:-1}
execute anchored eyes facing entity @n[tag=maddons.spell.caster] feet run function player_motion:api/launch_looking