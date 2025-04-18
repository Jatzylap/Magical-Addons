# item:dagger/sparkstone_orb/explode
# called by: item:dagger/sparkstone_orb/break

summon lightning_bolt ~ 999 ~

## Sounds
playsound magical_addons:ambient.quake player @a[distance=60..] ~ ~ ~ 100 0.5
playsound magical_addons:block.sparkstone.chime player @a ~ ~ ~ 100 0.5

## Particles
particle flash ~ ~ ~ 0 0 0 0 1
particle minecraft:item{item:{id:"snowball",components:{item_model:"magical_addons:sparkstone_orb"}}} ~ ~.1 ~ 0 0 0 1 1000

## Effects
function magical_addons:item/dagger/sparkstone_orb/explosion_effects/0
schedule function magical_addons:item/dagger/sparkstone_orb/explosion_effects/1 3