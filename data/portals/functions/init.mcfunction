# Used to Detect Flint and Steel Usage
scoreboard objectives add used_flintsteel minecraft.used:minecraft.flint_and_steel

# Used to Detect Fire Charge Usage
scoreboard objectives add used_firecharge minecraft.used:minecraft.fire_charge

# Used to Aid in Finding Fire Block - Not Necessarily Placed By Player Though :(
scoreboard objectives add search_fire dummy
scoreboard objectives add skip_fire dummy

# Used to Temporarily Store Player Coordinates Before Initial Teleportation
scoreboard objectives add player_x dummy
scoreboard objectives add player_y dummy
scoreboard objectives add player_z dummy

# Used to Temporarily Store Player Rotation Before Initial Teleportation
scoreboard objectives add player_rx dummy
scoreboard objectives add player_ry dummy

# Announce Install if Fresh Install
execute unless entity @e[name=CustomPortalsDataStorage, type=minecraft:armor_stand] run tellraw @p ["",{"text":"Installed Custom Portals Datapack!!! ","color":"aqua", "bold":false},{"text":"Click here for the command to uninstall the datapack in the future!!!", "color": "gold", "bold": false, "underlined": true, "clickEvent": {"action":"suggest_command","value":"/function portals:uninstall"}}]

# Used For Data Storage
forceload add 0 0

# Summon Armor Stand For Storing Data (If Doesn't Already Exist)
execute unless entity @e[name=CustomPortalsDataStorage, type=minecraft:armor_stand] run summon minecraft:armor_stand 0 -10 0 {CustomName:"\"CustomPortalsDataStorage\"", NoGravity: true, CustomNameVisible: false, Invisible: true, Marker: true}