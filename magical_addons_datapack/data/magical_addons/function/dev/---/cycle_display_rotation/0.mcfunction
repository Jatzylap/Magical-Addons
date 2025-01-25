## Get initial values
execute store result score #maddons.dev.cdr.x maddons.cycle_display_rot run data get entity @s transformation.left_rotation[0] 1000
execute store result score #maddons.dev.cdr.y maddons.cycle_display_rot run data get entity @s transformation.left_rotation[1] 1000
execute store result score #maddons.dev.cdr.z maddons.cycle_display_rot run data get entity @s transformation.left_rotation[2] 1000

## sinθ(angle / 2) ==> angle: -180°..180°
function magical_addons:dev/---/cycle_display_rotation/1

## i + n
execute if data storage maddons.dev:cycle_display_rotation {axis:"x"} store result score #maddons.dev.cdr.x^2 maddons.cycle_display_rot run scoreboard players operation #maddons.dev.cdr.x maddons.cycle_display_rot += @s maddons.cycle_display_rot
execute if data storage maddons.dev:cycle_display_rotation {axis:"y"} store result score #maddons.dev.cdr.y^2 maddons.cycle_display_rot run scoreboard players operation #maddons.dev.cdr.y maddons.cycle_display_rot += @s maddons.cycle_display_rot
execute if data storage maddons.dev:cycle_display_rotation {axis:"z"} store result score #maddons.dev.cdr.z^2 maddons.cycle_display_rot run scoreboard players operation #maddons.dev.cdr.z maddons.cycle_display_rot += @s maddons.cycle_display_rot

## sm = x^2 + y^2 + z^2
scoreboard players operation #maddons.dev.cdr.x^2 maddons.cycle_display_rot *= #maddons.dev.cdr.x maddons.cycle_display_rot
scoreboard players operation #maddons.dev.cdr.y^2 maddons.cycle_display_rot *= #maddons.dev.cdr.y maddons.cycle_display_rot
scoreboard players operation #maddons.dev.cdr.z^2 maddons.cycle_display_rot *= #maddons.dev.cdr.z maddons.cycle_display_rot
scoreboard players operation #maddons.dev.cdr.x^2 maddons.cycle_display_rot /= #1000 maddons.constant
scoreboard players operation #maddons.dev.cdr.y^2 maddons.cycle_display_rot /= #1000 maddons.constant
scoreboard players operation #maddons.dev.cdr.z^2 maddons.cycle_display_rot /= #1000 maddons.constant
scoreboard players operation #maddons.dev.cdr.sm maddons.cycle_display_rot += #maddons.dev.cdr.x^2 maddons.cycle_display_rot
scoreboard players operation #maddons.dev.cdr.sm maddons.cycle_display_rot += #maddons.dev.cdr.y^2 maddons.cycle_display_rot
scoreboard players operation #maddons.dev.cdr.sm maddons.cycle_display_rot += #maddons.dev.cdr.z^2 maddons.cycle_display_rot

## w = sqrt(1 - sm)
execute if score #maddons.dev.cdr.w maddons.cycle_display_rot matches 1000.. run scoreboard players set #maddons.dev.cdr.w maddons.cycle_display_rot 1000
scoreboard players set #maddons.dev maddons.cycle_display_rot 1000
scoreboard players operation #maddons.dev maddons.cycle_display_rot -= #maddons.dev.cdr.sm maddons.cycle_display_rot
function magical_addons:dev/---/cycle_display_rotation/2
execute store result score #maddons.dev.cdr.w^2 maddons.cycle_display_rot run scoreboard players operation #maddons.dev.cdr.w maddons.cycle_display_rot = @s maddons.cycle_display_rot

## cm = sqrt(sm + w^2)
scoreboard players operation #maddons.dev.cdr.w^2 maddons.cycle_display_rot *= #maddons.dev.cdr.w maddons.cycle_display_rot
scoreboard players operation #maddons.dev.cdr.w^2 maddons.cycle_display_rot /= #1000 maddons.constant
scoreboard players operation #maddons.dev maddons.cycle_display_rot = #maddons.dev.cdr.sm maddons.cycle_display_rot
scoreboard players operation #maddons.dev maddons.cycle_display_rot += #maddons.dev.cdr.w^2 maddons.cycle_display_rot
function magical_addons:dev/---/cycle_display_rotation/3
scoreboard players operation #maddons.dev.cdr.cm maddons.cycle_display_rot = @s maddons.cycle_display_rot

## x / cm ; y / cm ; z / cm ; w / cm
scoreboard players operation #maddons.dev.cdr.x maddons.cycle_display_rot *= #1000 maddons.constant
scoreboard players operation #maddons.dev.cdr.y maddons.cycle_display_rot *= #1000 maddons.constant
scoreboard players operation #maddons.dev.cdr.z maddons.cycle_display_rot *= #1000 maddons.constant
scoreboard players operation #maddons.dev.cdr.w maddons.cycle_display_rot *= #1000 maddons.constant
scoreboard players operation #maddons.dev.cdr.x maddons.cycle_display_rot /= #maddons.dev.cdr.cm maddons.cycle_display_rot
scoreboard players operation #maddons.dev.cdr.y maddons.cycle_display_rot /= #maddons.dev.cdr.cm maddons.cycle_display_rot
scoreboard players operation #maddons.dev.cdr.z maddons.cycle_display_rot /= #maddons.dev.cdr.cm maddons.cycle_display_rot
scoreboard players operation #maddons.dev.cdr.w maddons.cycle_display_rot /= #maddons.dev.cdr.cm maddons.cycle_display_rot

### Merge vector
execute store result entity @s transformation.left_rotation[0] float .001 run scoreboard players get #maddons.dev.cdr.x maddons.cycle_display_rot
execute store result entity @s transformation.left_rotation[1] float .001 run scoreboard players get #maddons.dev.cdr.y maddons.cycle_display_rot
execute store result entity @s transformation.left_rotation[2] float .001 run scoreboard players get #maddons.dev.cdr.z maddons.cycle_display_rot
execute store result entity @s transformation.left_rotation[3] float .001 run scoreboard players get #maddons.dev.cdr.w maddons.cycle_display_rot

## Reset
scoreboard players reset @s maddons.cycle_display_rot