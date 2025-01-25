# dungeon:aether_portal/build/x/5_17
# called by: dungeon:aether_portal/build

execute store result score @s maddons.temp if blocks ~ ~ ~ ~2 ~14 ~ ~ ~ ~ masked
execute if score @s maddons.temp matches 1 run fill ~ ~ ~ ~2 ~14 ~ light[level=11]
execute if score @s maddons.temp matches 1 run summon item_display ~ ~14 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:14,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~14 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:14,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~14 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:14,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~13 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:13,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~13 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:13,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~13 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:13,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~12 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:12,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~12 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:12,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~12 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:12,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~11 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:11,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~11 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:11,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~11 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:11,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~10 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:10,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~10 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:10,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~10 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:10,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~9 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:9,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~9 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:9,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~9 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:9,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~8 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:8,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~8 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:8,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~8 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:8,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~7 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:7,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~7 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:7,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~7 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:7,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~6 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:6,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~6 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:6,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~6 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:6,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~5 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:5,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~5 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:5,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~4 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:4,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~4 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:4,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:3,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:3,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:2,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:2,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:1,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:1,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:0,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:0,z:0,dx:3,dy:15,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:15}
execute if score @s maddons.temp matches 1 run summon interaction ~1 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:15}
execute if score @s maddons.temp matches 1 run summon interaction ~2 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:15}