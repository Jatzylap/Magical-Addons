# block:break
# called by: block:break_start

$execute at @s[tag=maddons.$(id)] unless block ~ ~ ~ $(block) run $(cmd)