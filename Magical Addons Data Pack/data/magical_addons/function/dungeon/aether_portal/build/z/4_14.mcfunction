# dungeon:aether_portal/build/z/4_14
# called by: dungeon:aether_portal/build

execute store result score @s maddons.temp if blocks ~ ~ ~ ~ ~11 ~1 ~ ~ ~ masked
execute if score @s maddons.temp matches 1 run fill ~ ~ ~ ~ ~11 ~1 light[level=11]
execute if score @s maddons.temp matches 1 run summon item_display ~ ~11 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:11,z:0,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~11 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:11,z:1,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~10 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:10,z:0,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~10 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:10,z:1,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~9 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:9,z:0,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~9 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:9,z:1,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~8 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:8,z:0,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~8 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:8,z:1,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~7 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:7,z:0,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~7 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:7,z:1,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~6 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:6,z:0,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~6 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:6,z:1,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:0,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:1,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:0,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:1,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:0,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:1,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:0,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:1,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:0,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:1,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:0,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:1,dx:1,dy:12,dz:2}}}}}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~ {Tags:[maddons.aether_portal,z],width:1.01,height:12}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~1 {Tags:[maddons.aether_portal,z],width:1.01,height:12}