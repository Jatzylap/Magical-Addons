# dungeon:aether_portal/build/x/19_5
# called by: dungeon:aether_portal/build

execute store result score @s maddons.temp if blocks ~ ~ ~ ~16 ~2 ~ ~ ~ ~ masked
execute if score @s maddons.temp matches 1 run fill ~ ~ ~ ~16 ~2 ~ light[level=11]
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:3,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:4,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:5,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:6,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:7,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~8 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:8,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~9 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:9,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~10 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:10,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~11 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:11,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~12 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:12,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~13 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:13,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~14 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:14,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~15 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:15,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~16 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,t,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:16,y:2,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:3,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:4,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:5,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:6,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:7,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~8 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:8,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~9 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:9,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~10 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:10,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~11 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:11,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~12 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:12,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~13 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:13,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~14 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:14,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~15 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:15,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~16 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:16,y:1,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:1,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:2,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:3,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:4,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:5,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:6,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:7,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~8 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:8,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~9 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:9,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~10 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:10,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~11 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:11,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~12 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:12,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~13 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:13,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~14 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:14,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~15 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:15,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~16 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,x,b,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:16,y:0,z:0,dx:17,dy:3,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~1 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~2 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~3 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~4 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~5 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~6 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~7 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~8 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~9 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~10 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~11 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~12 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~13 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~14 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~15 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}
execute if score @s maddons.temp matches 1 run summon interaction ~16 ~ ~ {Tags:[maddons.aether_portal,x],width:1.01,height:3}