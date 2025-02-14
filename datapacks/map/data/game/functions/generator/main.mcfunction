scoreboard players set @s[tag=!old] t2 5
scoreboard players set @s[tag=!old] t 0
scoreboard players set @s[tag=!old] t3 0
tag @s add old

tag @s add me

scoreboard players add @s t3 1
scoreboard players remove @s[scores={t3=20..}] t2 1
scoreboard players set @s[scores={t3=20..}] t3 0

tag @s remove next
tag @s[scores={t2=..0}] add next

execute as @s[tag=next,scores={t=1}] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Grenade","italic":false,"color":"gray"}'}}},NoGravity:1,Tags:["no_kill"]}
execute as @s[tag=next,scores={t=2}] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:bat_spawn_egg",Count:3b,tag:{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Wall","italic":false,"color":"gray"}'},EntityTag:{Silent:1b},HideFlags:48}},NoGravity:1,Tags:["no_kill"]}
execute as @s[tag=next,scores={t=3}] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:creeper_spawn_egg",Count:2b,tag:{CanPlaceOn:["#game:bolt_place"],display:{Name:'{"text":"Trap","italic":false,"color":"gray"}'},EntityTag:{PersistenceRequired:1b,Silent:1b},HideFlags:48}},NoGravity:1,Tags:["no_kill"]}

scoreboard players add @s[tag=next] t 1
scoreboard players set @s[tag=next,scores={t=4..}] t 1

scoreboard players set @s[tag=next,scores={t=0}] t2 45
scoreboard players set @s[tag=next,scores={t=1}] t2 45
scoreboard players set @s[tag=next,scores={t=2}] t2 45
scoreboard players set @s[tag=next,scores={t=3}] t2 45

scoreboard players set @s[tag=next,scores={t=0},tag=long] t2 70
scoreboard players set @s[tag=next,scores={t=1},tag=long] t2 70
scoreboard players set @s[tag=next,scores={t=2},tag=long] t2 70
scoreboard players set @s[tag=next,scores={t=3},tag=long] t2 70

data merge entity @s[scores={t3=0..3}] {CustomName:'{"text":"⬜ ⬜ ⬜"}'}
data merge entity @s[scores={t3=4..7}] {CustomName:'{"text":"⬛ ⬜ ⬜"}'}
data merge entity @s[scores={t3=8..11}] {CustomName:'{"text":"⬛ ⬛ ⬜"}'}
data merge entity @s[scores={t3=12..15}] {CustomName:'{"text":"⬜ ⬛ ⬛"}'}
data merge entity @s[scores={t3=16..19}] {CustomName:'{"text":"⬜ ⬜ ⬛"}'}

data merge entity @s[scores={t3=0..1}] {CustomName:'{"text":"⬜ ⬜ ⬜ ⬜ ⬜ ⬜"}'}
data merge entity @s[scores={t3=2..3}] {CustomName:'{"text":"⬛ ⬜ ⬜ ⬜ ⬜ ⬜"}'}
data merge entity @s[scores={t3=4..5}] {CustomName:'{"text":"⬛ ⬛ ⬜ ⬜ ⬜ ⬜"}'}
data merge entity @s[scores={t3=6..7}] {CustomName:'{"text":"⬛ ⬛ ⬛ ⬜ ⬜ ⬜"}'}
data merge entity @s[scores={t3=8..9}] {CustomName:'{"text":"⬛ ⬛ ⬛ ⬛ ⬜ ⬜"}'}
data merge entity @s[scores={t3=10..11}] {CustomName:'{"text":"⬜ ⬛ ⬛ ⬛ ⬛ ⬜"}'}
data merge entity @s[scores={t3=12..13}] {CustomName:'{"text":"⬜ ⬜ ⬛ ⬛ ⬛ ⬛"}'}
data merge entity @s[scores={t3=14..15}] {CustomName:'{"text":"⬜ ⬜ ⬜ ⬛ ⬛ ⬛"}'}
data merge entity @s[scores={t3=16..17}] {CustomName:'{"text":"⬜ ⬜ ⬜ ⬜ ⬛ ⬛"}'}
data merge entity @s[scores={t3=18..19}] {CustomName:'{"text":"⬜ ⬜ ⬜ ⬜ ⬜ ⬛"}'}

execute as @s[scores={t=1}] run data merge block ^ ^ ^1 {Color:"-1",Text1:'[{"text":"Making: ","bold":true,"color":"black"},{"text":"Grenade","color":"#0B5411","bold":false}]',Text4:'[{"text":"Next: ","bold":true,"color":"black"},{"text":"Walls","color":"#3A3C50","bold":false}]',Text2:'[{"text":"Time: ","color":"black"},{"score":{"name":"@e[tag=gen,tag=me,limit=1] ","objective":"t2"}}]',Text3:'{"selector":"@e[tag=gen,tag=me,limit=1]","color":"dark_gray"}'}
execute as @s[scores={t=2}] run data merge block ^ ^ ^1 {Color:"-1",Text1:'[{"text":"Making: ","bold":true,"color":"black"},{"text":"Walls","color":"#3A3C50","bold":false}]',Text4:'[{"text":"Next: ","bold":true,"color":"black"},{"text":"Traps","color":"#543A06","bold":false}]',Text2:'[{"text":"Time: ","color":"black"},{"score":{"name":"@e[tag=gen,tag=me,limit=1] ","objective":"t2"}}]',Text3:'{"selector":"@e[tag=gen,tag=me,limit=1]","color":"dark_gray"}'}
execute as @s[scores={t=3}] run data merge block ^ ^ ^1 {Color:"-1",Text1:'[{"text":"Making: ","bold":true,"color":"black"},{"text":"Traps","color":"#543A06","bold":false}]',Text4:'[{"text":"Next: ","bold":true,"color":"black"},{"text":"Grenade","color":"#0B5411","bold":false}]',Text2:'[{"text":"Time: ","color":"black"},{"score":{"name":"@e[tag=gen,tag=me,limit=1] ","objective":"t2"}}]',Text3:'{"selector":"@e[tag=gen,tag=me,limit=1]","color":"dark_gray"}'}

execute as @s[scores={t=..0}] run data merge block ^ ^ ^1 {Color:"-1",Text1:'[{"text":"Warming Up","bold":true,"color":"black"},{"text":"","color":"black","bold":false}]',Text4:'[{"text":"Next: ","bold":true,"color":"black"},{"text":"Grenade","color":"#0B5411","bold":false}]',Text2:'[{"text":"Time: ","color":"black"},{"score":{"name":"@e[tag=gen,tag=me,limit=1] ","objective":"t2"}}]',Text3:'{"selector":"@e[tag=gen,tag=me,limit=1]","color":"dark_gray"}'}


tag @s remove me