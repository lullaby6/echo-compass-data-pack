scoreboard players set @s echo_compass.hand 1


data modify storage echo_compass:main teleport.x set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[0]
data modify storage echo_compass:main teleport.y set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[1]
data modify storage echo_compass:main teleport.z set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[2]
data modify storage echo_compass:main teleport.dimension set from entity @s SelectedItem.components."minecraft:custom_data"."echo_compass.dimension"

function echo_compass:echo_compass/use/teleport with storage echo_compass:main teleport

data remove storage echo_compass:main teleport


data modify storage echo_compass:main replace.hand set value "main"
execute store result storage echo_compass:main replace.id int 1 run scoreboard players get @s echo_compass.id

function echo_compass:echo_compass/use/replace with storage echo_compass:main replace

data remove storage echo_compass:main replace