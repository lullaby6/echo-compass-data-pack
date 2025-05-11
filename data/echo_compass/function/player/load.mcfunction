scoreboard players add . echo_compass.id 1
execute store result score @s echo_compass.id run scoreboard players get . echo_compass.id

execute store result storage echo_compass:id id int 1 run scoreboard players get @s echo_compass.id
execute in minecraft:overworld run function echo_compass:player/load/armor_stand with storage echo_compass:id
data remove storage echo_compass:id id