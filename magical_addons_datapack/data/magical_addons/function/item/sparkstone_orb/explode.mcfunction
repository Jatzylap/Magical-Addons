# item:sparkstone_orb/explode
# called by: item:sparkstone_orb/break

summon lightning_bolt ~ 999 ~

## Sounds
playsound magical_addons:ambient.quake player @a ~ ~ ~ 100 0.5
playsound magical_addons:block.sparkstone.chime player @a ~ ~ ~ 100 0.5

## Particles
particle flash ~ ~ ~ 0 0 0 0 1
particle minecraft:item{item:{id:"recovery_compass",components:{item_model:"magical_addons:sparkstone_orb"}}} ~ ~.1 ~ 0 0 0 1 1000
function magical_addons:particle/ring_of_fire {scale:35,lifetime:180,min_life:0,max_life:30}

## Crater
summon fireball ~ ~ ~ {Motion:[0d,-9d,0d],acceleration_power:9.0,ExplosionPower:10b,Item:{id:"stick",components:{item_model:"air"}}}