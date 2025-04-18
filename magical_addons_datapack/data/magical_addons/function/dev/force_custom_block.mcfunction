# dev:force_custom_block
# called by: <dev>

$summon item_display ~ ~ ~ {Tags:[maddons.force_custom_block],item:{id:"stick",components:{item_model:"magical_addons:$(id)",custom_data:{magical_addons:{id:"force_custom_block",cmd:"function magical_addons:block/custom/$(id)/generate"}}}},item_display:"head"}

setblock ~ ~ ~ barrier