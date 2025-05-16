data modify storage echo_compass:main teleport.x set from entity @s equipment.offhand.components."minecraft:lodestone_tracker".target.pos[0]
data modify storage echo_compass:main teleport.y set from entity @s equipment.offhand.components."minecraft:lodestone_tracker".target.pos[1]
data modify storage echo_compass:main teleport.z set from entity @s equipment.offhand.components."minecraft:lodestone_tracker".target.pos[2]
data modify storage echo_compass:main teleport.dimension set from entity @s equipment.offhand.components."minecraft:custom_data"."echo_compass.dimension"

function echo_compass:echo_compass/use/teleport with storage echo_compass:main teleport

data remove storage echo_compass:main teleport