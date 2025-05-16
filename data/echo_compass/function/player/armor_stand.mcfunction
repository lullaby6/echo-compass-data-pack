execute store result storage echo_compass:id id int 1 run scoreboard players get @s echo_compass.id
execute in minecraft:overworld run function echo_compass:player/load/armor_stand with storage echo_compass:id
data remove storage echo_compass:id id