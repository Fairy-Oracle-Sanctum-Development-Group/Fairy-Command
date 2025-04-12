#获取坐标xyz
##计分板
scoreboard objectives add p_x dummy
scoreboard objectives add p_y dummy
scoreboard objectives add p_z dummy
scoreboard players set "-1" p_x -1
##生成实体
execute as @s at @s run summon minecraft:armor_stand pos_get
##添加tag
execute as @s at @s run tag @e[r=1,type=minecraft:armor_stand,name=pos_get] add p_g
tag @s add p_r
##获取x
scoreboard players set @s p_x 0
execute as @s at @s run tp @e[tag=p_g] ~ 0.0 0.0 facing 0.0 0.0 0.0
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[x=~,dx=-1000000] at @s run tag @s add p_f
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=1024] at @s run scoreboard players add @e[tag=p_r] p_x 1024000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=1024] at @s run tp ^^^1024

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=512] at @s run scoreboard players add @e[tag=p_r] p_x 512000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=512] at @s run tp ^^^512

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=256] at @s run scoreboard players add @e[tag=p_r] p_x 256000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=256] at @s run tp ^^^256

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=128] at @s run scoreboard players add @e[tag=p_r] p_x 128000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=128] at @s run tp ^^^128

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=64] at @s run scoreboard players add @e[tag=p_r] p_x 64000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=64] at @s run tp ^^^64

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=32] at @s run scoreboard players add @e[tag=p_r] p_x 32000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=32] at @s run tp ^^^32

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=16] at @s run scoreboard players add @e[tag=p_r] p_x 16000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=16] at @s run tp ^^^16

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=8] at @s run scoreboard players add @e[tag=p_r] p_x 8000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=8] at @s run tp ^^^8

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=4] at @s run scoreboard players add @e[tag=p_r] p_x 4000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=4] at @s run tp ^^^4

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=2] at @s run scoreboard players add @e[tag=p_r] p_x 2000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=2] at @s run tp ^^^2

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=1] at @s run scoreboard players add @e[tag=p_r] p_x 1000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=1] at @s run tp ^^^1

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.8] at @s run scoreboard players add @e[tag=p_r] p_x 800
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.8] at @s run tp ^^^0.8

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.4] at @s run scoreboard players add @e[tag=p_r] p_x 400
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.4] at @s run tp ^^^0.4

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.2] at @s run scoreboard players add @e[tag=p_r] p_x 200
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.2] at @s run tp ^^^0.2

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.1] at @s run scoreboard players add @e[tag=p_r] p_x 100
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.1] at @s run tp ^^^0.1

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.08] at @s run scoreboard players add @e[tag=p_r] p_x 80
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.08] at @s run tp ^^^0.08

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.04] at @s run scoreboard players add @e[tag=p_r] p_x 40
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.04] at @s run tp ^^^0.04

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.02] at @s run scoreboard players add @e[tag=p_r] p_x 20
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.02] at @s run tp ^^^0.02

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.001] at @s run scoreboard players add @e[tag=p_r] p_x 10
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.001] at @s run tp ^^^0.01

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.008] at @s run scoreboard players add @e[tag=p_r] p_x 8
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.008] at @s run tp ^^^0.008

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.004] at @s run scoreboard players add @e[tag=p_r] p_x 4
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.004] at @s run tp ^^^0.004

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.002] at @s run scoreboard players add @e[tag=p_r] p_x 2
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.002] at @s run tp ^^^0.002

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.001] at @s run scoreboard players add @e[tag=p_r] p_x 1
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.001] at @s run tp ^^^0.001

execute as @e[tag=p_g,tag=p_f] at @s run scoreboard players operation @e[tag=p_r] p_x *= "-1" p_x
tag @e[tag=p_g,tag=p_f] remove p_f
##获取y
scoreboard players set @s p_y 0
execute as @s at @s run tp @e[tag=p_g] 0.0 ~ 0.0 
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=512,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 51200
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=512,dy=1000000] at @s run tp ~~-512~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=256,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 25600
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=256,dy=1000000] at @s run tp ~~-256~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=128,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 12800
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=128,dy=1000000] at @s run tp ~~-128~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=64,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 6400
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=64,dy=1000000] at @s run tp ~~-64~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=32,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 3200
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=32,dy=1000000] at @s run tp ~~-32~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=16,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 1600
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=16,dy=1000000] at @s run tp ~~-16~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=8,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 800
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=8,dy=1000000] at @s run tp ~~-8~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=4,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 400
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=4,dy=1000000] at @s run tp ~~-4~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=2,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 200
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=2,dy=1000000] at @s run tp ~~-2~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=1,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 100
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=1,dy=1000000] at @s run tp ~~-1~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.8,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 80
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.8,dy=1000000] at @s run tp ~~-0.8~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.4,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 40
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.4,dy=1000000] at @s run tp ~~-0.4~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.2,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 20
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.2,dy=1000000] at @s run tp ~~-0.2~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.1,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 10
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.1,dy=1000000] at @s run tp ~~-0.1~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.08,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 8
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.08,dy=1000000] at @s run tp ~~-0.08~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.04,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 4
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.04,dy=1000000] at @s run tp ~~-0.04~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.02,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 2
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.02,dy=1000000] at @s run tp ~~-0.02~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.01,dy=1000000] at @s run scoreboard players add @e[tag=p_r] p_y 1
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.01,dy=1000000] at @s run tp ~~-0.01~
#
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=64,dy=-1000000] at @s run scoreboard players remove @e[tag=p_r] p_y 6400
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=64,dy=-1000000] at @s run tp ~~64~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=32,dy=-1000000] at @s run scoreboard players remove @e[tag=p_r] p_y 3200
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=32,dy=-1000000] at @s run tp ~~32~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=16,dy=-1000000] at @s run scoreboard players remove @e[tag=p_r] p_y 1600
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=16,dy=-1000000] at @s run tp ~~16~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=8,dy=-1000000] at @s run scoreboard players remove @e[tag=p_r] p_y 800
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=8,dy=-1000000] at @s run tp ~~8~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=4,dy=-1000000] at @s run scoreboard players remove @e[tag=p_r] p_y 400
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=4,dy=-1000000] at @s run tp ~~4~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=2,dy=-1000000] at @s run scoreboard players remove @e[tag=p_r] p_y 200
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=2,dy=-1000000] at @s run tp ~~2~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=1,dy=-1000000] at @s run scoreboard players remove @e[tag=p_r] p_y 100
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=1,dy=-1000000] at @s run tp ~~1~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.8,dy=-1000000] at @s run scoreboard players remove @e[tag=p_r] p_y 80
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.8,dy=-1000000] at @s run tp ~~0.8~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.4,dy=-1000000] at @s run scoreboard players remove @e[tag=p_r] p_y 40
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.4,dy=-1000000] at @s run tp ~~0.4~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.2,dy=-1000000] at @s run scoreboard players remove @e[tag=p_r] p_y 20
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.2,dy=-1000000] at @s run tp ~~0.2~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.1,dy=-1000000] at @s run scoreboard players remove @e[tag=p_r] p_y 10
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.1,dy=-1000000] at @s run tp ~~0.1~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.08,dy=-1000000] at @s run scoreboard players remove @e[tag=p_r] p_y 8
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.08,dy=-1000000] at @s run tp ~~0.08~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.04,dy=-1000000] at @s run scoreboard players remove @e[tag=p_r] p_y 4
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.04,dy=-1000000] at @s run tp ~~0.04~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.02,dy=-1000000] at @s run scoreboard players remove @e[tag=p_r] p_y 2
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.02,dy=-1000000] at @s run tp ~~0.02~

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.01,dy=-1000000] at @s run scoreboard players remove @e[tag=p_r] p_y 1
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.01,dy=-1000000] at @s run tp ~~0.01~
##获取z
scoreboard players set @s p_z 0
execute as @s at @s run tp @e[tag=p_g] 0.0 0.0 ~ facing 0.0 0.0 0.0
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[z=~,dz=-1000000] at @s run tag @s add p_f
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=1024] at @s run scoreboard players add @e[tag=p_r] p_z 1024000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=1024] at @s run tp ^^^1024

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=512] at @s run scoreboard players add @e[tag=p_r] p_z 512000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=512] at @s run tp ^^^512

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=256] at @s run scoreboard players add @e[tag=p_r] p_z 256000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=256] at @s run tp ^^^256

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=128] at @s run scoreboard players add @e[tag=p_r] p_z 128000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=128] at @s run tp ^^^128

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=64] at @s run scoreboard players add @e[tag=p_r] p_z 64000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=64] at @s run tp ^^^64

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=32] at @s run scoreboard players add @e[tag=p_r] p_z 32000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=32] at @s run tp ^^^32

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=16] at @s run scoreboard players add @e[tag=p_r] p_z 16000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=16] at @s run tp ^^^16

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=8] at @s run scoreboard players add @e[tag=p_r] p_z 8000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=8] at @s run tp ^^^8

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=4] at @s run scoreboard players add @e[tag=p_r] p_z 4000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=4] at @s run tp ^^^4

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=2] at @s run scoreboard players add @e[tag=p_r] p_z 2000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=2] at @s run tp ^^^2

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=1] at @s run scoreboard players add @e[tag=p_r] p_z 1000
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=1] at @s run tp ^^^1

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.8] at @s run scoreboard players add @e[tag=p_r] p_z 800
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.8] at @s run tp ^^^0.8

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.4] at @s run scoreboard players add @e[tag=p_r] p_z 400
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.4] at @s run tp ^^^0.4

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.2] at @s run scoreboard players add @e[tag=p_r] p_z 200
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.2] at @s run tp ^^^0.2

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.1] at @s run scoreboard players add @e[tag=p_r] p_z 100
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.1] at @s run tp ^^^0.1

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.08] at @s run scoreboard players add @e[tag=p_r] p_z 80
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.08] at @s run tp ^^^0.08

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.04] at @s run scoreboard players add @e[tag=p_r] p_z 40
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.04] at @s run tp ^^^0.04

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.02] at @s run scoreboard players add @e[tag=p_r] p_z 20
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.02] at @s run tp ^^^0.02

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.001] at @s run scoreboard players add @e[tag=p_r] p_z 10
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.001] at @s run tp ^^^0.01

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.008] at @s run scoreboard players add @e[tag=p_r] p_z 8
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.008] at @s run tp ^^^0.008

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.004] at @s run scoreboard players add @e[tag=p_r] p_z 4
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.004] at @s run tp ^^^0.004

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.002] at @s run scoreboard players add @e[tag=p_r] p_z 2
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.002] at @s run tp ^^^0.002

execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.001] at @s run scoreboard players add @e[tag=p_r] p_z 1
execute as @e[tag=p_g] at @s positioned 0.0 0.0 0.0 as @s[rm=0.001] at @s run tp ^^^0.001

execute as @e[tag=p_g,tag=p_f] at @s run scoreboard players operation @e[tag=p_r] p_z *= "-1" p_x
tag @e[tag=p_g,tag=p_f] remove p_f
##输出xyz
#execute @s ~~~ tellraw @a { "rawtext": [ { "text": "X: " },{ "score": {"name": "@s", "objective": "p_x" } },{ "text": " Y: " },{ "score": {"name": "@s", "objective": "p_y" } },{ "text": " Z: " },{ "score": {"name": "@s", "objective": "p_z" } } ] }
##后续处理
kill @e[tag=p_g]
tag @s remove p_r

#By Baby_2016