# entity:automaton/moves/death
# called by: entity:automaton/death

particle minecraft:explosion_emitter ~ ~3 ~

execute at @s as @a run playsound minecraft:entity.generic.explode block @a ~ ~3 ~ 7 .8

summon falling_block ^-1 ^ ^ {Tags:[maddons.automaton.block],BlockState:{Name:"stone_brick_stairs"},DropItem:0,Time:0}
summon falling_block ^1 ^ ^ {Tags:[maddons.automaton.block],BlockState:{Name:"stone_brick_stairs"},DropItem:0,Time:0}
summon falling_block ^-1 ^1 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"mossy_cobblestone_stairs",Properties:{half:top}},DropItem:0,Time:0}
summon falling_block ^1 ^1 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"mossy_cobblestone_stairs",Properties:{half:top}},DropItem:0,Time:0}
summon falling_block ^ ^1 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"cauldron"},DropItem:0,Time:0}
summon falling_block ^-2 ^1 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"mossy_cobblestone_wall"},DropItem:0,Time:0}
summon falling_block ^-2 ^ ^ {Tags:[maddons.automaton.block],BlockState:{Name:"mossy_cobblestone_wall"},DropItem:0,Time:0}
summon falling_block ^2 ^1 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"mossy_cobblestone_wall"},DropItem:0,Time:0}
summon falling_block ^2 ^ ^ {Tags:[maddons.automaton.block],BlockState:{Name:"mossy_cobblestone_wall"},DropItem:0,Time:0}
summon falling_block ^-1 ^2 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"stone_brick_slab"},DropItem:0,Time:0}
summon falling_block ^1 ^2 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"stone_brick_slab"},DropItem:0,Time:0}
summon falling_block ^ ^2 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"anvil"},DropItem:0,Time:0}
summon falling_block ^-2 ^3 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"hopper"},DropItem:0,Time:0}
summon falling_block ^2 ^3 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"hopper"},DropItem:0,Time:0}
summon falling_block ^-1 ^3 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"mossy_cobblestone_stairs",Properties:{half:top}},DropItem:0,Time:0}
summon falling_block ^1 ^3 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"mossy_cobblestone_stairs",Properties:{half:top}},DropItem:0,Time:0}
summon falling_block ^ ^3 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"smooth_stone"},DropItem:0,Time:0}
summon falling_block ^-2 ^4 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"cauldron"},DropItem:0,Time:0}
summon falling_block ^2 ^4 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"cauldron"},DropItem:0,Time:0}
summon falling_block ^-1 ^4 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"cracked_stone_bricks"},DropItem:0,Time:0}
summon falling_block ^1 ^4 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"cracked_stone_bricks"},DropItem:0,Time:0}
summon falling_block ^ ^4 ^-.5 {Tags:[maddons.automaton.block],BlockState:{Name:"end_portal_frame"},DropItem:0,Time:0}
summon falling_block ^ ^4 ^.5 {Tags:[maddons.automaton.block],BlockState:{Name:"end_portal_frame"},DropItem:0,Time:0}
summon falling_block ^-2 ^5 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"stone_brick_slab"},DropItem:0,Time:0}
summon falling_block ^2 ^5 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"stone_brick_slab"},DropItem:0,Time:0}
summon falling_block ^ ^5 ^ {Tags:[maddons.automaton.block],BlockState:{Name:"observer"},DropItem:0,Time:0}

execute as @e[type=falling_block,tag=maddons.automaton.block] at @s store result entity @s Motion[0] float .001 run random value -1000..1000
execute as @e[type=falling_block,tag=maddons.automaton.block] at @s store result entity @s Motion[1] float .001 run random value 0..1000
execute as @e[type=falling_block,tag=maddons.automaton.block] at @s store result entity @s Motion[2] float .001 run random value -1000..1000