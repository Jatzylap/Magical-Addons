# block:group/custom/temp/return
# called by: main:one_minute

forceload add ~ ~
kill
$setblock ~ ~ ~ $(base_block)
forceload remove ~ ~