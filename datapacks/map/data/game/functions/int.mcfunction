team add blue
team add red

team add Spectator

team modify blue color dark_aqua
team modify red color red
team modify Spectator color gray

team modify blue friendlyFire false
team modify red friendlyFire false

team modify red nametagVisibility hideForOtherTeams
team modify blue nametagVisibility hideForOtherTeams

team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true



team add noCol
team modify noCol collisionRule never

team add noColRed
team modify noColRed collisionRule never
team modify noColRed color red

team add noColBlue
team modify noColBlue collisionRule never
team modify noColBlue color dark_aqua

team add gray
team modify gray color gray

# objectives remove

scoreboard objectives remove ID
scoreboard objectives remove ID.item

# objectives add
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add useMap minecraft.used:minecraft.map
scoreboard objectives add placeCreeper minecraft.used:minecraft.creeper_spawn_egg
scoreboard objectives add placeSlime minecraft.used:minecraft.slime_spawn_egg
scoreboard objectives add placeMagma minecraft.used:minecraft.magma_cube_spawn_egg
scoreboard objectives add snowball minecraft.used:minecraft.snowball

scoreboard objectives add place_creeper_temp minecraft.used:minecraft.creeper_spawn_egg
scoreboard objectives add place_bat_temp minecraft.used:minecraft.bat_spawn_egg
scoreboard objectives add place_slime_temp minecraft.used:minecraft.slime_spawn_egg
scoreboard objectives add place_magmac_temp minecraft.used:minecraft.magma_cube_spawn_egg

scoreboard objectives add place_block minecraft.used:minecraft.deepslate_coal_ore

scoreboard objectives add snowballCount dummy

scoreboard objectives add bowUse minecraft.used:minecraft.bow
scoreboard objectives add crossUse minecraft.used:minecraft.crossbow
scoreboard objectives add arrowsOut dummy
scoreboard objectives add arrowsOutT dummy
scoreboard objectives add arrowCount dummy
scoreboard objectives add arrowReload dummy

scoreboard objectives add timer dummy

scoreboard objectives add ID dummy

scoreboard objectives add KILL_ID dummy

scoreboard players set .new ID 0

scoreboard objectives add game_id dummy

scoreboard objectives add ID.item dummy
scoreboard players set .new ID.item 0

scoreboard objectives add .data dummy
scoreboard objectives add .metric dummy
scoreboard objectives add .calc dummy
scoreboard objectives add .random dummy
scoreboard objectives add .rank dummy
scoreboard objectives add .stats dummy
scoreboard objectives add .timer dummy

scoreboard objectives add .stats dummy
scoreboard players set .10000 .stats 10000

scoreboard objectives add health health

scoreboard objectives add deaths deathCount
scoreboard objectives add kill minecraft.custom:minecraft.player_kills
scoreboard objectives add killP minecraft.custom:minecraft.player_kills

scoreboard objectives add rank dummy
scoreboard objectives add rank_delta dummy
scoreboard objectives add rank_delta_up dummy
scoreboard objectives add rank_delta_down dummy
scoreboard objectives add rank_raw dummy
scoreboard objectives add rank_strength dummy

scoreboard objectives add kills_ranked dummy
scoreboard objectives add score_ranked dummy
scoreboard objectives add captures_ranked dummy

scoreboard objectives add random dummy

scoreboard objectives add kills dummy
scoreboard objectives add killStreak dummy

scoreboard objectives add respawn dummy
scoreboard objectives add respawn_assist dummy

scoreboard objectives add Scores dummy

scoreboard objectives add cutscene dummy
scoreboard objectives add cutscene_time dummy

scoreboard objectives add death_ani dummy
scoreboard objectives add time_dead dummy

scoreboard objectives add flagtime dummy
scoreboard objectives add invul dummy
scoreboard objectives add wall_invul dummy
scoreboard objectives add danger dummy

scoreboard objectives add removeBlind dummy

scoreboard objectives add DirX dummy
scoreboard objectives add DirY dummy
scoreboard objectives add DirZ dummy

scoreboard objectives add tDirX dummy
scoreboard objectives add tDirY dummy
scoreboard objectives add tDirZ dummy

scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

scoreboard objectives add t dummy
scoreboard objectives add t1 dummy
scoreboard objectives add t2 dummy
scoreboard objectives add t3 dummy
scoreboard objectives add t4 dummy
scoreboard objectives add t5 dummy

scoreboard objectives add crossbowUse minecraft.used:minecraft.crossbow
scoreboard objectives add crossbowReload dummy
scoreboard objectives add crossbowTime dummy

scoreboard objectives add hurt dummy

scoreboard objectives add team_pref dummy
scoreboard objectives add team_pref_temp dummy

scoreboard players set .CrossKills .stats 15
scoreboard players set .GrenadeKills .stats 4
scoreboard players set .WallKills .stats 5
scoreboard players set .endscore .stats 3

scoreboard objectives add .num dummy
scoreboard players set .0 .num 0
scoreboard players set .1 .num 1
scoreboard players set .2 .num 2
scoreboard players set .3 .num 3
scoreboard players set .4 .num 4
scoreboard players set .5 .num 5
scoreboard players set .6 .num 6
scoreboard players set .7 .num 7
scoreboard players set .8 .num 8
scoreboard players set .9 .num 9
scoreboard players set .10 .num 10
scoreboard players set .11 .num 11
scoreboard players set .12 .num 12
scoreboard players set .13 .num 13
scoreboard players set .14 .num 14
scoreboard players set .15 .num 15
scoreboard players set .16 .num 16
scoreboard players set .17 .num 17
scoreboard players set .18 .num 18
scoreboard players set .19 .num 19
scoreboard players set .20 .num 20
scoreboard players set .21 .num 21
scoreboard players set .22 .num 22
scoreboard players set .23 .num 23
scoreboard players set .24 .num 24

scoreboard players set .25 .num 25
scoreboard players set .26 .num 26
scoreboard players set .27 .num 27
scoreboard players set .28 .num 28
scoreboard players set .29 .num 29

scoreboard players set .30 .num 30
scoreboard players set .31 .num 31
scoreboard players set .32 .num 32
scoreboard players set .33 .num 33
scoreboard players set .34 .num 34

scoreboard players set .35 .num 35
scoreboard players set .36 .num 36
scoreboard players set .37 .num 37
scoreboard players set .38 .num 38
scoreboard players set .39 .num 39

scoreboard players set .40 .num 40
scoreboard players set .41 .num 41
scoreboard players set .42 .num 42
scoreboard players set .43 .num 43
scoreboard players set .44 .num 44

scoreboard players set .45 .num 45
scoreboard players set .46 .num 46
scoreboard players set .47 .num 47
scoreboard players set .48 .num 48
scoreboard players set .49 .num 49

scoreboard players set .50 .num 50
scoreboard players set .51 .num 51
scoreboard players set .52 .num 52
scoreboard players set .53 .num 53
scoreboard players set .54 .num 54

scoreboard players set .55 .num 55
scoreboard players set .56 .num 56
scoreboard players set .57 .num 57
scoreboard players set .58 .num 58
scoreboard players set .59 .num 59

scoreboard players set .60 .num 60
scoreboard players set .61 .num 61
scoreboard players set .62 .num 62
scoreboard players set .63 .num 63
scoreboard players set .64 .num 64

scoreboard players set .65 .num 65
scoreboard players set .66 .num 66
scoreboard players set .67 .num 67
scoreboard players set .68 .num 68
scoreboard players set .69 .num 69

scoreboard players set .70 .num 70
scoreboard players set .71 .num 71
scoreboard players set .72 .num 72
scoreboard players set .73 .num 73
scoreboard players set .74 .num 74

scoreboard players set .75 .num 75
scoreboard players set .76 .num 76
scoreboard players set .77 .num 77
scoreboard players set .78 .num 78
scoreboard players set .79 .num 79

scoreboard players set .80 .num 80
scoreboard players set .81 .num 81
scoreboard players set .82 .num 82
scoreboard players set .83 .num 83
scoreboard players set .84 .num 84

scoreboard players set .85 .num 85
scoreboard players set .86 .num 86
scoreboard players set .87 .num 87
scoreboard players set .88 .num 88
scoreboard players set .89 .num 89

scoreboard players set .90 .num 90
scoreboard players set .91 .num 91
scoreboard players set .92 .num 92
scoreboard players set .93 .num 93
scoreboard players set .94 .num 94

scoreboard players set .95 .num 95
scoreboard players set .96 .num 96
scoreboard players set .97 .num 97
scoreboard players set .98 .num 98
scoreboard players set .99 .num 99

scoreboard players set .100 .num 100
scoreboard players set .101 .num 101
scoreboard players set .102 .num 102
scoreboard players set .103 .num 103
scoreboard players set .104 .num 104

scoreboard players set .105 .num 105
scoreboard players set .106 .num 106
scoreboard players set .107 .num 107
scoreboard players set .108 .num 108
scoreboard players set .109 .num 109

scoreboard players set .110 .num 110
scoreboard players set .111 .num 111
scoreboard players set .112 .num 112
scoreboard players set .113 .num 113
scoreboard players set .114 .num 114
scoreboard players set .115 .num 115
scoreboard players set .116 .num 116
scoreboard players set .117 .num 117
scoreboard players set .118 .num 118
scoreboard players set .119 .num 119

scoreboard players set .120 .num 120
scoreboard players set .121 .num 121
scoreboard players set .122 .num 122
scoreboard players set .123 .num 123
scoreboard players set .124 .num 124

scoreboard players set .125 .num 125
scoreboard players set .126 .num 126
scoreboard players set .127 .num 127
scoreboard players set .128 .num 128
scoreboard players set .129 .num 129

scoreboard players set .200 .num 200

scoreboard players set .300 .num 300

scoreboard players set .n1 .num -1
scoreboard players set .n2 .num -2
scoreboard players set .n3 .num -3
scoreboard players set .n4 .num -4
scoreboard players set .n5 .num -5
scoreboard players set .n6 .num -6
scoreboard players set .n7 .num -7

scoreboard players set .map .data 1

scoreboard objectives add .timer dummy

#scoreboard players set .hexdoor1 .timer 0
#scoreboard players set .hexdoor2 .timer 0

scoreboard objectives add .metric dummy