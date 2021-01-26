# If player is holding luminescent item in regular hand
execute as @a[nbt={SelectedItem:{id:"minecraft:beacon"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:conduit"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:glowstone"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:lava_bucket"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:jack_o_lantern"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:lantern"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:sea_lantern"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:sea_pickle"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:shroomlight"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:end_rod"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:torch"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:crying_obsidian"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:soul_campfire"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:soul_lantern"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:soul_torch"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:ender_chest"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:redstone_torch"}}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={SelectedItem:{id:"minecraft:magma_block"}}] at @s run scoreboard players set @s holdingLuminesce 1


# If player is holding luminescent item in off hand
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:beacon"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:conduit"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:glowstone"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:lava_bucket"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:jack_o_lantern"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:lantern"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:sea_lantern"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:sea_pickle"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shroomlight"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:end_rod"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:torch"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crying_obsidian"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_campfire"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_torch"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_chest"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:redstone_torch"}]}] at @s run scoreboard players set @s holdingLuminesce 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:magma_block"}]}] at @s run scoreboard players set @s holdingLuminesce 1

# If holding, then run glow_add
execute as @a[scores={holdingLuminesce=1}] at @s run function glow:add

# Removes lights that need to be removed
execute as @e[type=minecraft:area_effect_cloud,tag=glow] at @s run function glow:remove

execute as @a[scores={holdingLuminesce=1}] run scoreboard players set @s holdingLuminesce 0