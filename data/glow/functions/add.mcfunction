# So we can remove it later, put this placeholder
execute unless entity @e[type=area_effect_cloud,tag=glow,distance=..0.6] run summon minecraft:item_frame ~ ~ ~ {Invisible:true,Invulnerable:true,Tags:["glow_item_frame"],Facing:1}
# Execute as item frame
execute at @e[type=minecraft:item_frame,distance=..1,tag=glow_item_frame,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["glow"],Duration:630720000}
kill @e[type=minecraft:item_frame,distance=..2,tag=glow_item_frame,limit=1]
# If underwater, place waterlogged lichen
execute at @e[type=minecraft:area_effect_cloud,tag=glow,distance=..1,limit=1] if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:glow_lichen[waterlogged=true]
# Otherwise place aired lichen
execute at @e[type=minecraft:area_effect_cloud,tag=glow,distance=..1,limit=1] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:glow_lichen[waterlogged=false]