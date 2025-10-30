# entity:weaponise_mob
# called by: main:two_seconds

execute store result score #maddons.entity.weapon maddons.temp run random value 0..2
execute if score #maddons.entity.weapon maddons.temp matches 0 run loot replace entity @s weapon loot magical_addons:wooden_wand
execute if score #maddons.entity.weapon maddons.temp matches 1 run loot replace entity @s weapon loot magical_addons:stone_wand
execute if score #maddons.entity.weapon maddons.temp matches 2 run loot replace entity @s weapon loot magical_addons:iron_wand
enchant @s magical_addons:damaging_spell 1