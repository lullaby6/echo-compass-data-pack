$item modify entity @s weapon.$(hand)hand echo_compass:components
$item modify entity @s weapon.$(hand)hand echo_compass:lore/base

$execute if dimension minecraft:overworld run function echo_compass:link/dimension {"hand":"$(hand)","dimension":"overworld"}
$execute if dimension minecraft:the_nether run function echo_compass:link/dimension {"hand":"$(hand)","dimension":"the_nether"}
$execute if dimension minecraft:the_end run function echo_compass:link/dimension {"hand":"$(hand)","dimension":"the_end"}

scoreboard players reset @s echo_compass.x
scoreboard players reset @s echo_compass.y
scoreboard players reset @s echo_compass.z

function echo_compass:link/effects