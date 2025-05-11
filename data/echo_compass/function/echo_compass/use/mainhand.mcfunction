data modify storage echo_compass:main teleport.x set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[0]
data modify storage echo_compass:main teleport.y set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[1]
data modify storage echo_compass:main teleport.z set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[2]
data modify storage echo_compass:main teleport.dimension set from entity @s SelectedItem.components."minecraft:custom_data"."echo_compass.dimension"

function echo_compass:echo_compass/use/teleport with storage echo_compass:main teleport

data remove storage echo_compass:main teleport


summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,Tags:["echo_compass.armor_stand"]}

item replace entity @n[tag=echo_compass.armor_stand] weapon.mainhand from entity @s weapon.mainhand

item replace entity @s weapon.mainhand with air
item replace entity @s weapon.mainhand from entity @n[tag=echo_compass.armor_stand] weapon.mainhand

kill @n[tag=echo_compass.armor_stand]