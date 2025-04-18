# block:custom/ruby_ore/place
# called by: block:custom/ruby_ore/scan

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/ruby_ore=true}] run playsound block.stone.place block @a ~ ~ ~ 1 .6

## Block
execute if predicate magical_addons:block/visible unless entity @e[distance=..1.5,type=item_display,tag=maddons.light] run summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.cullable,maddons.persistent,maddons.light,maddons.ruby_ore],item:{id:"lime_stained_glass",components:{item_model:"magical_addons:misc/light",custom_model_data:{colors:[I;16711680]},custom_data:{magical_addons:{id:"ruby_ore",block:"chiseled_bookshelf{components:{\"minecraft:custom_data\":{magical_addons:{id:ruby_ore}}}}",cmd:"function magical_addons:block/custom/ruby_ore/break"}}}},item_display:"head"}
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b