# Made From 2015 Tutorial - https://www.youtube.com/watch?v=lH1sCNWxikA&feature=youtu.be&t=141&ab_channel=slicedlime
# Notes: A few duplicate armor stands are made and can be removed. Noted above the line which creates the duplicate armor stands.
# Also, for some reason, setting armor stands as markers causes them to not be able to be used to detect blocks. My guess is because
# the marker tag makes the hitbox 0 and so it doesn't have a large enough area to detect the block below it? idk, it doesn't make sense,
# why would the hitbox effect coordinate based block detection code?

# Locate Player's Position
execute as @a[scores={used_flintsteel=1..}] at @s run summon minecraft:item_frame ~ ~ ~ {CustomName:"\"Align\"", Invisible: true}
execute as @a[scores={used_firecharge=1..}] at @s run summon minecraft:item_frame ~ ~ ~ {CustomName:"\"Align\"", Invisible: true}

# Start Search For Player Placed Block
execute as @e[type=minecraft:item_frame, name=Align] positioned ~ ~ ~0.5 at @s run summon minecraft:armor_stand ~-5 ~-5 ~-5 {CustomName:"\"Start\"", NoGravity: true, Marker: false, Invisible: true}

kill @e[type=minecraft:item_frame, name=Align] 

execute as @e[type=minecraft:armor_stand, name=Start] positioned ~ ~ ~ at @s run summon minecraft:armor_stand ~1 ~ ~ {CustomName:"\"Start\"", NoGravity: true, Marker: false, Invisible: true}

execute as @e[type=minecraft:armor_stand, name=Start] positioned ~ ~ ~ at @s run summon minecraft:armor_stand ~2 ~ ~ {CustomName:"\"Start\"", NoGravity: true, Marker: false, Invisible: true}

execute as @e[type=minecraft:armor_stand, name=Start] positioned ~ ~ ~ at @s run summon minecraft:armor_stand ~4 ~ ~ {CustomName:"\"Wait\"", NoGravity: true, Marker: false, Invisible: true}

# There's a duplicate armor stand somewhere in this command (there's supposed to be 11, but 12 spawn)
execute as @e[type=minecraft:armor_stand, name=Start] positioned ~ ~ ~ at @s run summon minecraft:armor_stand ~7 ~ ~ {CustomName:"\"Wait\"", NoGravity: true, Marker: false, Invisible: true}

execute as @e[type=minecraft:armor_stand, name=Wait] run data merge entity @s {CustomName:"\"Start\""}

# Start Spreading Search Stands

execute as @e[type=minecraft:armor_stand, name=Start] positioned ~ ~ ~ at @s run summon minecraft:armor_stand ~ ~ ~8 {CustomName:"\"Wait\"", NoGravity: true, Marker: false, Invisible: true}

execute as @e[type=minecraft:armor_stand, name=Start] positioned ~ ~ ~ at @s run summon minecraft:armor_stand ~ ~ ~9 {CustomName:"\"Wait\"", NoGravity: true, Marker: false, Invisible: true}

execute as @e[type=minecraft:armor_stand, name=Start] positioned ~ ~ ~ at @s run summon minecraft:armor_stand ~ ~ ~10 {CustomName:"\"Wait\"", NoGravity: true, Marker: false, Invisible: true}

execute as @e[type=minecraft:armor_stand, name=Start] positioned ~ ~ ~ at @s run summon minecraft:armor_stand ~ ~ ~1 {CustomName:"\"Start\"", NoGravity: true, Marker: false, Invisible: true}

execute as @e[type=minecraft:armor_stand, name=Start] positioned ~ ~ ~ at @s run summon minecraft:armor_stand ~ ~ ~2 {CustomName:"\"Start\"", NoGravity: true, Marker: false, Invisible: true}

execute as @e[type=minecraft:armor_stand, name=Start] positioned ~ ~ ~ at @s run summon minecraft:armor_stand ~ ~ ~4 {CustomName:"\"Start\"", NoGravity: true, Marker: false, Invisible: true}

# Record Search Starting Locations
execute as @e[type=minecraft:armor_stand, name=Start] run data merge entity @s {CustomName:"\"Search\""}
execute as @e[type=minecraft:armor_stand, name=Wait] run data merge entity @s {CustomName:"\"Search\""}

scoreboard players set @e[type=minecraft:armor_stand, name=Search, tag=!search_marked] search_fire -5
scoreboard players set @e[type=minecraft:armor_stand, name=Search, tag=!search_marked] skip_fire 0

tag @e[type=minecraft:armor_stand, name=Search] add search_marked

# Start Actual Searching

execute as @e[type=minecraft:armor_stand, name=Found] run scoreboard players set @e[type=minecraft:armor_stand, name=Search, distance=0] skip_fire 1

execute as @e[type=minecraft:armor_stand, name=Search, scores={skip_fire=0}] at @s if block ~ ~ ~ #minecraft:fire as @s run data merge entity @e[type=minecraft:armor_stand, name=Search, distance=0, limit=1] {CustomName:"\"Found\""}

# Make Armor Stand Intangible For Player (and commands?)
execute as @e[type=minecraft:armor_stand, name=Found] run data merge entity @s {Marker: true}

execute as @e[type=minecraft:armor_stand, name=Search] at @s run tp ~ ~1 ~
scoreboard players add @e[type=minecraft:armor_stand, name=Search] search_fire 1


# End Search Task
kill @e[type=minecraft:armor_stand, name=Search, scores={search_fire=6..}]
