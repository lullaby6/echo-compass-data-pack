execute store result score @s echo_compass.x run data get entity @s equipment.offhand.components."minecraft:lodestone_tracker".target.pos[0]
execute store result score @s echo_compass.y run data get entity @s equipment.offhand.components."minecraft:lodestone_tracker".target.pos[1]
execute store result score @s echo_compass.z run data get entity @s equipment.offhand.components."minecraft:lodestone_tracker".target.pos[2]

execute if dimension minecraft:overworld run scoreboard players set @s echo_compass.dimension 1
execute if dimension minecraft:overworld run item modify entity @s weapon.offhand echo_compass:dimension/overworld

execute if dimension minecraft:the_nether run scoreboard players set @s echo_compass.dimension 2
execute if dimension minecraft:the_nether run item modify entity @s weapon.offhand echo_compass:dimension/the_nether

execute if dimension minecraft:the_end run scoreboard players set @s echo_compass.dimension 3
execute if dimension minecraft:the_end run item modify entity @s weapon.offhand echo_compass:dimension/the_end

item modify entity @s weapon.offhand echo_compass:components
item modify entity @s weapon.offhand echo_compass:lore/base

execute if dimension minecraft:overworld run item modify entity @s weapon.offhand echo_compass:lore/dimension/overworld
execute if dimension minecraft:the_nether run item modify entity @s weapon.offhand echo_compass:lore/dimension/the_nether
execute if dimension minecraft:the_end run item modify entity @s weapon.offhand echo_compass:lore/dimension/the_end

scoreboard players reset @s echo_compass.x
scoreboard players reset @s echo_compass.y
scoreboard players reset @s echo_compass.z
scoreboard players reset @s echo_compass.dimension

function echo_compass:link/effects