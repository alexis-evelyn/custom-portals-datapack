#execute as @a[scores={used_flintsteel=1..}] run say Used Flint and Steel!!!

function portals:find_fire

execute as @a[scores={used_flintsteel=1..}] run scoreboard players reset @s used_flintsteel

execute as @a[scores={used_firecharge=1..}] run scoreboard players reset @s used_firecharge

function portals:detect_portal