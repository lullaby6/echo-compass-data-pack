scoreboard players reset @s echo_compass.hand

$data modify storage echo_compass:main replace.hand set value "$(hand)"
execute store result storage echo_compass:main replace.id int 1 run scoreboard players get @s echo_compass.id

function echo_compass:echo_compass/replace/replace with storage echo_compass:main replace

data remove storage echo_compass:main replace