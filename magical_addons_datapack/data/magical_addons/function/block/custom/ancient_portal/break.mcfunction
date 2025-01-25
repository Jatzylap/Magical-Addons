# block:custom/ancient_portal/break
# called by: block:break

## As portal frame
execute if entity @s[type=item_display] run particle item{item:{id:"stick",components:{item_model:"magical_addons:ancient_portal"}}} ~ ~ ~ .35 .35 .35 .1 70 force
execute if entity @s[type=item_display] run playsound block.glass.break block @a ~ ~ ~ 1 .8
setblock ~ ~ ~ air

## As portal frame + hitbox
kill @s