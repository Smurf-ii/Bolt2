#
execute as @a[scores={Leave=1..}] at @s if score @s game_id = .current_id .data if score .running .data = .1 .num run function game:player/relog_game
execute as @a[scores={Leave=1..}] at @s run function game:player/leave_game

#
execute as @a[tag=loading] at @s run function game:player/leave_gamee

#
execute as @e[type=egg] at @s run execute as @p at @s run function game:test
kill @e[type=egg]

#stopsound @a * minecraft:entity.generic.explode

#
kill @e[tag=kill,tag=dead]

#
execute as @e[tag=teleport_down] at @s run tp @s ~ ~-100 ~
tag @e remove teleport_down

#
scoreboard players add .ran_team .random 1
execute if score .ran_team .random = .2 .num run scoreboard players set .ran_team .random 0

scoreboard players set .players .data 0
execute as @a run scoreboard players add .players .data 1

#
gamemode adventure @a[gamemode=survival]
effect give @a minecraft:resistance 999 255 true

kill @e[type=item,tag=!no_kill]

execute as @a run attribute @s minecraft:generic.max_health base set 2

execute as @e[type=arrow] run data merge entity @s {damage:1000.0}

#gametime
execute if score .gametime .data >= .1 .num run scoreboard players add .gametime .data 1

#hurtime
#scoreboard players set @a hurt 0
#execute as @a run execute store result score @s hurt run data get entity @s HurtTime 1
#scoreboard players set @a[scores={hurt=9..,invul=..0,respawn=..0}] deaths 1
#execute as @a[scores={hurt=9..,invul=1..,respawn=..0,break_invul=1..}] run say test
#scoreboard players set @a break_invul 0

scoreboard players set @a hurt 0
execute as @a run execute store result score @s hurt run data get entity @s HurtTime 1
scoreboard players set @a[scores={hurt=9..,invul=..0,respawn=..0}] deaths 1
scoreboard players set @a[scores={hurt=9..,invul=1..,respawn=..0,break_invul=1..,wall_invul=1..}] deaths 1
scoreboard players set @a break_invul 0

scoreboard players remove @a[scores={wall_invul=0..}] wall_invul 1

#lobby
tag @a remove lobby
tag @a[x=245,y=-50,z=-235,distance=..60] add lobby
scoreboard players set @a[x=245,y=-50,z=-235,distance=..60] invul 40
scoreboard players set @a[x=243.5,y=-44,z=-235.5,distance=3.5..60] arrowReload 32
clear @a[x=243.5,y=-44,z=-235.5,distance=3.5..60] arrow
team join red @a[x=245,y=-50,z=-235,distance=..60,scores={team_pref=1}]
team join blue @a[x=245,y=-50,z=-235,distance=..60,scores={team_pref=2}]
team join Spectator @a[x=245,y=-50,z=-235,distance=..60,scores={team_pref=-1}]

tp @a[x=249,y=-56,z=-250,dx=30,dy=3,dz=30,gamemode=adventure] 243.5 -44.00 -235.5 -90 13

kill @e[type=arrow,x=245,y=-50,z=-235,distance=..60]

execute as @a[x=243.5,y=-44,z=-235.5,distance=..2.9,scores={arrowReload=2..35}] as @s run scoreboard players set @s arrowReload 38
execute as @a[x=243.5,y=-44,z=-235.5,distance=..2.9,scores={bowUse=1..}] as @s run function game:menu/hitscan_start

#
scoreboard players add @e[type=arrow] ID 0
execute as @a[scores={bowUse=1..}] at @s run scoreboard players operation @e[type=arrow,tag=!shot,limit=1,sort=nearest,scores={ID=0}] ID = @s ID
execute as @a[scores={crossUse=1..}] at @s run scoreboard players operation @e[type=arrow,tag=!shot,limit=1,sort=nearest,scores={ID=0}] ID = @s ID
tag @e[type=arrow] add shot
execute as @a at @s run function game:player/arrowcheck
scoreboard players set @a bowUse 0
scoreboard players set @a crossUse 0

#team count
function game:game/team_dif

#spawns
function game:game/spawns

#
execute as @e[tag=cutscene] at @s run function game:cutscene/main

# generator
execute if score .running .data = .1 .num as @e[type=marker,tag=gen] at @s run function game:generator/main

#placed_blocks
execute as @e[type=marker,tag=temp_block] at @s run function game:items/temp_block/main

#walls
execute as @e[type=minecraft:falling_block] at @s run function game:items/lower
execute as @e[type=minecraft:falling_block] at @s if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ~ ~0.6 ~ air run tp @s ~ ~0.6 ~
execute as @e[type=minecraft:falling_block] at @s run fill ~ ~ ~ ~ ~ ~ gravel replace air
kill @e[type=minecraft:falling_block]

#spawn placing
tag @e[type=minecraft:magma_cube] add spawn
tag @e[type=slime] add spawn

execute as @e[tag=spawn] at @s run function game:items/spawn/main

#walls
execute as @e[type=bat] at @s run summon marker ~ ~ ~ {Tags:["wall"]}
tp @e[type=bat] ~ ~-1000 ~
kill @e[type=bat]
execute as @e[tag=wall] at @s run function game:items/wall/main

#grenade
kill @e[type=snowball,tag=dummy]
execute as @e[tag=grenademark] at @s run function game:items/grenade/check
execute as @e[type=snowball,tag=!dummy] at @s run function game:items/grenade/main
execute as @e[tag=grenadehit] at @s run function game:items/grenade/hitmark

#arrow
execute as @e[type=arrow,nbt={inGround:1b}] at @s run function game:arrow/land

#players
execute as @a at @s run function game:player/main

#tags
tag @e[type=slime] add old
tag @e[type=magma_cube] add old
tag @e[type=creeper] add old

# Timer
execute if score .running .data = .1 .num if score TIME Scores > .0 .num run scoreboard players add .time_tick .data 1
execute if score .running .data = .1 .num if score TIME Scores > .0 .num if score .time_tick .data >= .20 .num run scoreboard players remove TIME Scores 1
execute if score .running .data = .1 .num if score TIME Scores > .0 .num if score .time_tick .data >= .20 .num run scoreboard players set .time_tick .data 0
execute if score TIME Scores = .0 .num run function game:end
execute if score TIME Scores = .0 .num run scoreboard players reset TIME Scores

#
execute if score .running .data = .1 .num if score .end_countdown .data > .0 .num run scoreboard players remove .end_countdown .data 1
execute if score .running .data = .1 .num if score .end_countdown .data = .0 .num run function game:end

# Infection win condition
execute if score .mode .data = .6 .num if score .running .data = .1 .num if score .gametime .data > .300 .num if score .end_countdown .data = .n5 .num unless entity @a[team=blue,x=243.5,y=-44,z=-235.5,distance=70..] run title @a times 20 60 20
execute if score .mode .data = .6 .num if score .running .data = .1 .num if score .gametime .data > .300 .num if score .end_countdown .data = .n5 .num unless entity @a[team=blue,x=243.5,y=-44,z=-235.5,distance=70..] run title @a title {"text":"INFECTED WIN!"}
execute if score .mode .data = .6 .num if score .running .data = .1 .num if score .gametime .data > .300 .num if score .end_countdown .data = .n5 .num unless entity @a[team=blue,x=243.5,y=-44,z=-235.5,distance=70..] run scoreboard players set .end_countdown .data 100

#flags
execute as @e[tag=redflag,tag=drop] at @s run function game:flags/dropped
execute as @e[tag=blueflag,tag=drop] at @s run function game:flags/dropped

execute as @e[tag=redflag,tag=!drop] at @s run function game:flags/main
execute as @e[tag=blueflag,tag=!drop] at @s run function game:flags/main

clear @a[tag=!hasflag] red_banner
clear @a[tag=!hasflag] blue_banner

item replace entity @a[tag=!hasflag,scores={invul=..0}] armor.head with minecraft:air

clear @a[tag=!hasflag,team=blue] red_banner
clear @a[tag=!hasflag,team=blue] red_dye
item replace entity @a[tag=!hasflag,team=blue,scores={invul=..0}] armor.head with minecraft:air
item replace entity @a[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:red_banner",Slot:103b}]},team=blue] armor.head with minecraft:red_banner
item replace entity @a[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:red_dye",Slot:99b}]},team=blue] weapon.offhand with minecraft:red_dye

clear @a[tag=!hasflag,team=red] blue_banner
clear @a[tag=!hasflag,team=red] blue_dye
item replace entity @a[tag=!hasflag,team=red,scores={invul=..0}] armor.head with minecraft:air
item replace entity @a[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:blue_banner",Slot:103b}]},team=red] armor.head with minecraft:blue_banner
item replace entity @a[tag=hasflag,nbt=!{Inventory:[{id:"minecraft:blue_dye",Slot:99b}]},team=red] weapon.offhand with minecraft:blue_dye

#trap
effect give @e[tag=trap] resistance 999 10 true
execute as @e[tag=trap] run execute store result score @s hurt run data get entity @s HurtTime 1
execute as @e[tag=trap,scores={hurt=..1}] at @s positioned ~ ~0.6 ~ run function game:items/trap/main
effect give @e[tag=trap,scores={hurt=2..}] glowing 10 10 true
kill @e[tag=trap,scores={hurt=2..}]

#reveal
execute as @a[scores={useMap=1..}] run function game:items/reveal/use

#bow correct
give @a[nbt=!{Inventory:[{id:"minecraft:bow"}]},team=blue] bow{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:999s}],HideFlags:1} 1
give @a[nbt=!{Inventory:[{id:"minecraft:bow"}]},team=red] bow{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:999s}],HideFlags:1} 1
give @a[nbt=!{Inventory:[{id:"minecraft:bow"}]},team=] bow{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:999s}],HideFlags:1} 1
clear @a[team=Spectator] bow

#crossbow test
scoreboard players add @a crossbowTime 0
scoreboard players add @a[scores={crossbowTime=0},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:1b}}}] crossbowTime 240

scoreboard players add @a[scores={crossbowReload=1..}] crossbowReload 1
scoreboard players set @a[scores={crossbowUse=1..}] crossbowReload 1
tag @a[scores={crossbowReload=2..},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b}}}] add reloadCross
#clear @a[tag=reloadCross] crossbow
item replace entity @a[tag=reloadCross] weapon.mainhand with crossbow{Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b} 1
scoreboard players set @a[tag=reloadCross] crossbowReload 0

tag @a remove reloadCross
scoreboard players set @a crossbowUse 0

execute as @a[scores={crossbowTime=1..}] at @s run function game:items/crossbow/active

#danger area
scoreboard players set @a[tag=!danger] danger 0
scoreboard players add @a[tag=danger] danger 1
execute as @a[scores={danger=1}] at @s run title @s times 2 10 10
execute as @a[scores={danger=1}] at @s run title @s title {"text":"! DANGER AREA !"}
execute as @a[scores={danger=1}] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 1 1
execute as @a[scores={danger=1}] at @s run playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 2
effect give @a[scores={danger=18..}] minecraft:instant_damage 1 100 true
tag @a remove danger

#map
clear @a minecraft:filled_map

#test
#scoreboard players add @a[tag=!hasflag] speedrun 1

#run maps
execute if score .map .data = .5 .num run function game:map/hex/run

#test
#
#execute as @a run attribute @s minecraft:generic.movement_speed base set .1
#execute as @a run attribute @s minecraft:generic.movement_speed base set .13
#execute as @a[predicate=game:sprint] run attribute @s minecraft:generic.movement_speed base set 0.1

#
execute if score .running .data = .1 .num run scoreboard players add .Time .metric 1

execute if score .running .data = .1 .num run scoreboard players add .no_players .timer 1
execute if score .running .data = .1 .num if entity @a[team=red,tag=playing] if entity @a[team=blue,tag=playing] run scoreboard players set .no_players .timer 0
execute if score .running .data = .1 .num if score .mode .data = .6 .num if entity @a[team=red,tag=playing] run scoreboard players set .no_players .timer 0
execute if score .running .data = .1 .num if score .mode .data = .7 .num if entity @a[team=blue,tag=playing] run scoreboard players set .no_players .timer 0

execute if score .running .data = .1 .num if score .mode .data = .1 .num if score .no_players .timer = .10 .num run say NO PLAYERS ON A TEAM. RESTARTING IN 10 SECONDS
execute if score .running .data = .1 .num if score .mode .data = .1 .num if score .no_players .timer = .200 .num run function game:end

execute if score .running .data = .1 .num if score .mode .data = .6 .num if score .no_players .timer = .10 .num run say NO PLAYERS INFECTED. RESTARTING IN 10 SECONDS
execute if score .running .data = .1 .num if score .mode .data = .6 .num if score .no_players .timer = .200 .num run function game:end

execute if score .running .data = .1 .num if score .mode .data = .7 .num if score .no_players .timer = .10 .num run say NO PLAYERS. RESTARTING IN 10 SECONDS
execute if score .running .data = .1 .num if score .mode .data = .7 .num if score .no_players .timer = .200 .num run function game:end

execute if score .running .data = .0 .num run scoreboard players set .no_players .timer -60
execute if score .no_players .timer > .200 .num run scoreboard players set .no_players .timer -60

#
execute if score .start_cd .data = .100 .num run title @a times 4 8 5
execute if score .start_cd .data = .60 .num run title @a times 4 8 5
execute if score .start_cd .data = .100 .num run title @a title {"text":"Starting : 5"}
execute if score .start_cd .data = .80 .num run title @a title {"text":"Starting : 4"}
execute if score .start_cd .data = .60 .num run title @a title {"text":"Starting : 3"}
execute if score .start_cd .data = .40 .num run title @a title {"text":"Starting : 2"}
execute if score .start_cd .data = .20 .num run title @a title {"text":"Starting : 1"}
execute if score .start_cd .data = .0 .num run function game:start2

execute if score .start_cd .data >= .0 .num run scoreboard players remove .start_cd .data 1
execute if score .start_cd .data = .n5 .num run scoreboard players set .start_cd .data -1

#
tp @e[tag=kill] ~ ~-10000 ~
tag @e[tag=kill] add dead