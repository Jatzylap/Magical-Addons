# entity:automaton/bossbar
# called by: entity:automaton/check_global

$bossbar add magical_addons:$(UUID) {"translate":"entity.magical_addons.automaton"}
$bossbar set magical_addons:$(UUID) color yellow

$execute store result bossbar magical_addons:$(UUID) max on vehicle run attribute @s minecraft:max_health get
$execute store result bossbar magical_addons:$(UUID) value on vehicle run data get entity @s Health

$bossbar set magical_addons:$(UUID) players @a[distance=..64]