# entity:sculk_spider/hit
# called by advancement: entity:hit_sculk_spider

## Baby spawn
execute as @e[limit=1,type=item_display,tag=maddons.sculk_spider,tag=maddons.entity.ai,tag=maddons.egg_sack] at @s on vehicle on vehicle unless data entity @s {HurtTime:0s} run function magical_addons:entity/sculk_spider/summon_baby {nbt:{}}
execute if predicate magical_addons:shared/25_percent as @e[limit=1,type=item_display,tag=maddons.sculk_spider,tag=maddons.entity.ai,tag=maddons.egg_sack] at @s on vehicle on vehicle unless data entity @s {HurtTime:0s} run function magical_addons:entity/sculk_spider/summon_baby {nbt:{}}

## Reset
tag @e[limit=1,type=item_display,tag=maddons.sculk_spider,tag=maddons.entity.ai,tag=maddons.egg_sack] remove maddons.egg_sack
advancement revoke @s only magical_addons:---/entity/hit_sculk_spider