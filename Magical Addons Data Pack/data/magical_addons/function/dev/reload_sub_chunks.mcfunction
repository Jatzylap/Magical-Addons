## Set reference values as player
#$scoreboard players set #maddons.dev.rsc.x maddons.reload_sub_chunks $(x)
#$scoreboard players set #maddons.dev.rsc.y maddons.reload_sub_chunks $(y)
#$scoreboard players set #maddons.dev.rsc.z maddons.reload_sub_chunks $(z)
#$scoreboard players set #maddons.dev.rsc.dx maddons.reload_sub_chunks $(dx)
#$scoreboard players set #maddons.dev.rsc.dy maddons.reload_sub_chunks $(dy)
#$scoreboard players set #maddons.dev.rsc.dz maddons.reload_sub_chunks $(dz)
#data modify storage maddons.dev:reload_sub_chunks.dimension set string entity @s Dimension 10
#
### Calculate first sub chunk corner
#scoreboard players operation #maddons.dev.rsc.x_ maddons.reload_sub_chunks %= #16 maddons.constant
#scoreboard players operation #maddons.dev.rsc.y_ maddons.reload_sub_chunks %= #16 maddons.constant
#scoreboard players operation #maddons.dev.rsc.z_ maddons.reload_sub_chunks %= #16 maddons.constant
#execute store result storage maddons.dev:temp data.reload_sub_chunks.x int 1 run scoreboard players operation #maddons.dev.rsc.x maddons.reload_sub_chunks -= #maddons.dev.rsc.x_ maddons.reload_sub_chunks
#execute store result storage maddons.dev:temp data.reload_sub_chunks.y int 1 run scoreboard players operation #maddons.dev.rsc.y maddons.reload_sub_chunks -= #maddons.dev.rsc.y_ maddons.reload_sub_chunks
#execute store result storage maddons.dev:temp data.reload_sub_chunks.z int 1 run scoreboard players operation #maddons.dev.rsc.z maddons.reload_sub_chunks -= #maddons.dev.rsc.z_ maddons.reload_sub_chunks
#
### Reload chunk
#function magical_addons:dev/---/reload_sub_chunks/1 with storage maddons.dev:temp data.reload_sub_chunks