scoreboard players add @s t 1

execute as @s[scores={t=3}] run tag @a remove head_show

execute as @s[scores={t=1}] run kill @e[tag=head,type=armor_stand]
execute as @s[scores={t=81}] run kill @e[tag=head,type=armor_stand]

execute as @s[scores={t=3}] run summon minecraft:armor_stand ^2 ^ ^5 {NoBasePlate:1b,Rotation:[240F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{}]}
execute as @s[scores={t=9}] run summon minecraft:armor_stand ^3 ^ ^5 {NoBasePlate:1b,Rotation:[240F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{}]}
execute as @s[scores={t=15}] run summon minecraft:armor_stand ^4 ^ ^5 {NoBasePlate:1b,Rotation:[240F,0F],Tags:["head","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{}]}

execute as @s[scores={t=3}] run summon minecraft:armor_stand ^-2 ^ ^5 {NoBasePlate:1b,Rotation:[300F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:22015}}},{}]}
execute as @s[scores={t=9}] run summon minecraft:armor_stand ^-3 ^ ^5 {NoBasePlate:1b,Rotation:[300F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:22015}}},{}]}
execute as @s[scores={t=15}] run summon minecraft:armor_stand ^-4 ^ ^5 {NoBasePlate:1b,Rotation:[300F,0F],Tags:["head","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,Small:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:22015}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:22015}}},{}]}

#
execute as @s[scores={t=3}] run title @a times 10 40 10
execute as @s[scores={t=3}] run title @a title {"text":"VS","bold":"true"}

#
execute as @s[scores={t=3}] if score .mode .data = .7 .num run item replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head with minecraft:target
execute as @s[scores={t=3}] if score .mode .data = .7 .num run tag @a[team=red,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=3}] if score .mode .data = .7 .num run tag @e[tag=head,tag=red,limit=1,tag=!head_show] add head_show

execute as @s[scores={t=9}] if score .mode .data = .7 .num run item replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head with minecraft:target
execute as @s[scores={t=9}] if score .mode .data = .7 .num run tag @a[team=red,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=9}] if score .mode .data = .7 .num run tag @e[tag=head,tag=red,limit=1,tag=!head_show] add head_show

execute as @s[scores={t=15}] if score .mode .data = .7 .num run item replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head with minecraft:target
execute as @s[scores={t=15}] if score .mode .data = .7 .num run tag @a[team=red,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=15}] if score .mode .data = .7 .num run tag @e[tag=head,tag=red,limit=1,tag=!head_show] add head_show

#
execute as @s[scores={t=3}] as @a[team=red,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=3}] as @a[team=red,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=3}] run tag @a[team=red,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=3}] run tag @e[tag=head,tag=red,limit=1,tag=!head_show] add head_show

execute as @s[scores={t=9}] as @a[team=red,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=9}] as @a[team=red,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=9}] run tag @a[team=red,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=9}] run tag @e[tag=head,tag=red,limit=1,tag=!head_show] add head_show

execute as @s[scores={t=15}] as @a[team=red,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=15}] as @a[team=red,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=red,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=15}] run tag @a[team=red,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=15}] run tag @e[tag=head,tag=red,limit=1,tag=!head_show] add head_show

#
execute as @s[scores={t=3}] as @a[team=blue,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=3}] as @a[team=blue,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=3}] run tag @a[team=blue,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=3}] run tag @e[tag=head,tag=blue,limit=1,tag=!head_show] add head_show

execute as @s[scores={t=9}] as @a[team=blue,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=9}] as @a[team=blue,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=9}] run tag @a[team=blue,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=9}] run tag @e[tag=head,tag=blue,limit=1,tag=!head_show] add head_show

execute as @s[scores={t=15}] as @a[team=blue,limit=1,tag=!head_show] run item replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head with minecraft:player_head
execute as @s[scores={t=15}] as @a[team=blue,limit=1,tag=!head_show] run loot replace entity @e[tag=head,tag=blue,limit=1,tag=!head_show] armor.head loot game:player_head
execute as @s[scores={t=15}] run tag @a[team=blue,limit=1,tag=!head_show] add head_show
execute as @s[scores={t=15}] run tag @e[tag=head,tag=blue,limit=1,tag=!head_show] add head_show

#
execute as @e[tag=head] if entity @s[nbt=!{ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}]}] if entity @s[nbt=!{ArmorItems:[{},{},{},{id:"minecraft:target",Count:1b}]}] run kill @s

#
execute as @s[scores={t=20}] run effect give @a darkness 4 10 true

#
execute as @s[scores={t=99}] run function game:game/mapstart

#
execute as @s[scores={t=200..}] run kill @s

#
execute as @s[scores={t=100..160}] run gamemode spectator @a[scores={team_pref=-1}]