advancement revoke @s only echo_compass:consume

function echo_compass:player/armor_stand

execute if predicate echo_compass:mainhand run return run function echo_compass:echo_compass/use/mainhand

execute if predicate echo_compass:offhand run return run function echo_compass:echo_compass/use/offhand