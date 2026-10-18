# block:custom/potted_golden_oak_sapling/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run particle minecraft:block{block_state:{Name:'flower_pot'}} ~ ~ ~ 0 0 0 0 10

execute unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/potted_golden_oak_sapling
execute unless block ~ ~ ~ #magical_addons:air_like if entity @s[type=player,gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/potted_golden_oak_sapling

execute as @n[type=#magical_addons:display,tag=maddons.potted_golden_oak_sapling,distance=...5] on passengers run kill
fill ~ ~ ~ ~ ~ ~ air replace structure_void

kill @n[type=#magical_addons:display,tag=maddons.potted_golden_oak_sapling,distance=...5]