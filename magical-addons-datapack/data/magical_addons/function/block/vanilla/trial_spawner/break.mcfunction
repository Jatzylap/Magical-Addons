# block:vanilla/trial_spawner/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run playsound magical_addons:block.trial_spawner.break block @a ~ ~ ~ 1
execute if block ~ ~ ~ #magical_addons:air_like run function magical_addons:particle/break_block {id:"trial_spawner"}

kill @n[type=#magical_addons:display,tag=maddons.trial_spawner,distance=...5]