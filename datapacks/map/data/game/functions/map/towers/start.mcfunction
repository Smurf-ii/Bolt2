fill -89 -50 -14 -55 -48 57 air replace minecraft:gravel
fill -89 -62 -14 -55 -51 57 air replace minecraft:gravel

fill -89 -50 -14 -55 -48 57 air replace minecraft:target
fill -89 -62 -14 -55 -51 57 air replace minecraft:target

fill -89 -50 -14 -55 -48 57 air replace minecraft:emerald_block
fill -89 -62 -14 -55 -51 57 air replace minecraft:emerald_block

#fill -77 -52 55 -77 -53 53 minecraft:gravel
#fill -77 -53 -11 -77 -52 -13 gravel

execute if score .mode .data = .1 .num run fill -57 -58 35 -61 -54 35 gravel
execute if score .mode .data = .1 .num run fill -57 -58 7 -61 -54 7 gravel

execute if score .mode .data = .1 .num run summon armor_stand -64 -58 49 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],Tags:["blueflag","flag"]}
execute if score .mode .data = .1 .num run summon armor_stand -64 -58 -7 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],Tags:["redflag","flag"]}

execute if score .mode .data = .1 .num run summon marker -79 -50 46 {Tags:["gen"]}
execute if score .mode .data = .1 .num run summon marker -79 -50 -4 {Rotation:[180F,0F],Tags:["gen"]}

execute if score .mode .data = .7 .num if score TIME Scores < .123 .num run function game:game/spawn_targets

setblock -82 -55 32 minecraft:hanging_roots
setblock -84 -55 31 minecraft:hanging_roots
setblock -76 -55 33 minecraft:hanging_roots
setblock -64 -55 35 minecraft:hanging_roots
setblock -69 -55 32 minecraft:hanging_roots