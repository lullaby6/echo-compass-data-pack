advancement revoke @s only echo_compass:item_used_on_block

execute as @a if predicate echo_compass:mainhand if data entity @s SelectedItem.components."minecraft:lodestone_tracker" unless data entity @s SelectedItem.components."minecraft:consumable" at @s run return run function echo_compass:link/mainhand

execute as @a if predicate echo_compass:offhand if data entity @s equipment.offhand.components."minecraft:lodestone_tracker" unless data entity @s equipment.offhand.components."minecraft:consumable" at @s run return run function echo_compass:link/offhand