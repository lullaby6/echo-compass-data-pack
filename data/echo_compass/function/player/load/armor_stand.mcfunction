forceload add 0 0

$execute if entity @e[tag=echo_compass.armor_stand.replace.$(id)] run return fail

$summon armor_stand 0 10000 0 {Tags:["echo_compass.armor_stand.replace","echo_compass.armor_stand.replace.$(id)"],NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,DisabledSlots:4144959}

$scoreboard players set @n[tag=echo_compass.armor_stand.replace.$(id)] echo_compass.id $(id)