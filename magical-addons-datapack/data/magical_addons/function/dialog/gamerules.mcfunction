# dialog:gamerules
# called by: dialog/config.json

## '\u0024' substitutes '$'

$dialog show @s {type:"minecraft:multi_action",title:{text:"",extra:[""]},body:[{type:"minecraft:plain_message",contents:{translate:"dialog.magical_addons.gamerules",bold:1}}],inputs:[{type:"minecraft:boolean",key:"disable_world_greeting",label:{translate:"gamerule.magical_addons.disable_world_greeting"},initial:$(disable_world_greeting)},{type:"minecraft:boolean",key:"disable_custom_boss_music",label:{translate:"gamerule.magical_addons.disable_custom_boss_music"},initial:$(disable_custom_boss_music)}],exit_action:{label:{translate:"gui.done"}},actions:[{label:{translate:"dialog.magical_addons.save"},action:{type:"minecraft:dynamic/run_command",template:"data merge storage magical_addons:config {'disable_world_greeting':\u0024(disable_world_greeting),'disable_custom_boss_music':\u0024(disable_custom_boss_music)}"}}]}