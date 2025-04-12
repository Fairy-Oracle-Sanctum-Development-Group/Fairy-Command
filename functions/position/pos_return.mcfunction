#坐标转tp
##计分板
scoreboard objectives add p_r dummy
scoreboard objectives add p_x dummy
scoreboard objectives add p_y dummy
scoreboard objectives add p_z dummy
scoreboard players set "-1" p_r -1
##生成实体
execute as @s at @s run summon minecraft:armor_stand pos_return
##添加tag
execute as @s at @s run tag @e[r=1,type=minecraft:armor_stand,name=pos_return] add p_v
execute as @s at @s run scoreboard players operation @e[r=1,type=minecraft:armor_stand,name=pos_return] p_x = @s p_x
execute as @s at @s run scoreboard players operation @e[r=1,type=minecraft:armor_stand,name=pos_return] p_y = @s p_y
execute as @s at @s run scoreboard players operation @e[r=1,type=minecraft:armor_stand,name=pos_return] p_z = @s p_z
##x
execute as @s at @s run tp @e[tag=p_v,scores={p_x=..-1}] 0 0 0 facing -10 0 0
execute as @s at @s run tp @e[tag=p_v,scores={p_x=1..}] 0 0 0 facing 10 0 0
execute as @s at @s as @e[tag=p_v] at @s run scoreboard players operation @s p_r = @s p_x
execute as @s at @s as @e[tag=p_v,scores={p_r=..-1}] at @s run scoreboard players operation @s p_r *= "-1" p_r
execute as @e[tag=p_v,scores={p_r=1024..}] at @s run tp @s ^^^1024
execute as @e[tag=p_v,scores={p_r=1024..}] at @s run scoreboard players remove @s p_r 1024

execute as @e[tag=p_v,scores={p_r=512..}] at @s run tp @s ^^^512
execute as @e[tag=p_v,scores={p_r=512..}] at @s run scoreboard players remove @s p_r 512

execute as @e[tag=p_v,scores={p_r=256..}] at @s run tp @s ^^^256
execute as @e[tag=p_v,scores={p_r=256..}] at @s run scoreboard players remove @s p_r 256

execute as @e[tag=p_v,scores={p_r=128..}] at @s run tp @s ^^^128
execute as @e[tag=p_v,scores={p_r=128..}] at @s run scoreboard players remove @s p_r 128

execute as @e[tag=p_v,scores={p_r=64..}] at @s run tp @s ^^^64
execute as @e[tag=p_v,scores={p_r=64..}] at @s run scoreboard players remove @s p_r 64

execute as @e[tag=p_v,scores={p_r=32..}] at @s run tp @s ^^^32
execute as @e[tag=p_v,scores={p_r=32..}] at @s run scoreboard players remove @s p_r 32

execute as @e[tag=p_v,scores={p_r=16..}] at @s run tp @s ^^^16
execute as @e[tag=p_v,scores={p_r=16..}] at @s run scoreboard players remove @s p_r 16

execute as @e[tag=p_v,scores={p_r=8..}] at @s run tp @s ^^^8
execute as @e[tag=p_v,scores={p_r=8..}] at @s run scoreboard players remove @s p_r 8

execute as @e[tag=p_v,scores={p_r=4..}] at @s run tp @s ^^^4
execute as @e[tag=p_v,scores={p_r=4..}] at @s run scoreboard players remove @s p_r 4

execute as @e[tag=p_v,scores={p_r=2..}] at @s run tp @s ^^^2
execute as @e[tag=p_v,scores={p_r=2..}] at @s run scoreboard players remove @s p_r 2

execute as @e[tag=p_v,scores={p_r=1..}] at @s run tp @s ^^^1
execute as @e[tag=p_v,scores={p_r=1..}] at @s run scoreboard players remove @s p_r 1
##y
execute as @s at @s as @e[tag=p_v] at @s run scoreboard players operation @s p_r = @s p_y
execute as @e[tag=p_v,scores={p_r=256..}] at @s run tp @s ~~256~
execute as @e[tag=p_v,scores={p_r=256..}] at @s run scoreboard players remove @s p_r 256

execute as @e[tag=p_v,scores={p_r=128..}] at @s run tp @s ~~128~
execute as @e[tag=p_v,scores={p_r=128..}] at @s run scoreboard players remove @s p_r 128

execute as @e[tag=p_v,scores={p_r=64..}] at @s run tp @s ~~64~
execute as @e[tag=p_v,scores={p_r=64..}] at @s run scoreboard players remove @s p_r 54

execute as @e[tag=p_v,scores={p_r=32..}] at @s run tp @s ~~32~
execute as @e[tag=p_v,scores={p_r=32..}] at @s run scoreboard players remove @s p_r 32

execute as @e[tag=p_v,scores={p_r=16..}] at @s run tp @s ~~16~
execute as @e[tag=p_v,scores={p_r=16..}] at @s run scoreboard players remove @s p_r 16

execute as @e[tag=p_v,scores={p_r=8..}] at @s run tp @s ~~8~
execute as @e[tag=p_v,scores={p_r=8..}] at @s run scoreboard players remove @s p_r 8

execute as @e[tag=p_v,scores={p_r=4..}] at @s run tp @s ~~4~
execute as @e[tag=p_v,scores={p_r=4..}] at @s run scoreboard players remove @s p_r 4

execute as @e[tag=p_v,scores={p_r=2..}] at @s run tp @s ~~2~
execute as @e[tag=p_v,scores={p_r=2..}] at @s run scoreboard players remove @s p_r 2

execute as @e[tag=p_v,scores={p_r=1..}] at @s run tp @s ~~1~
execute as @e[tag=p_v,scores={p_r=1..}] at @s run scoreboard players remove @s p_r 1
#
execute as @e[tag=p_v,scores={p_r=..-64}] at @s run tp @s ~~-64~
execute as @e[tag=p_v,scores={p_r=..-64}] at @s run scoreboard players add @s p_r 64

execute as @e[tag=p_v,scores={p_r=..-32}] at @s run tp @s ~~-32~
execute as @e[tag=p_v,scores={p_r=..-32}] at @s run scoreboard players add @s p_r 32

execute as @e[tag=p_v,scores={p_r=..-16}] at @s run tp @s ~~-16~
execute as @e[tag=p_v,scores={p_r=..-16}] at @s run scoreboard players add @s p_r 16

execute as @e[tag=p_v,scores={p_r=..-8}] at @s run tp @s ~~-8~
execute as @e[tag=p_v,scores={p_r=..-8}] at @s run scoreboard players add @s p_r 8

execute as @e[tag=p_v,scores={p_r=..-4}] at @s run tp @s ~~-4~
execute as @e[tag=p_v,scores={p_r=..-4}] at @s run scoreboard players add @s p_r 4

execute as @e[tag=p_v,scores={p_r=..-2}] at @s run tp @s ~~-2~
execute as @e[tag=p_v,scores={p_r=..-2}] at @s run scoreboard players add @s p_r 2

execute as @e[tag=p_v,scores={p_r=..-1}] at @s run tp @s ~~-1~
execute as @e[tag=p_v,scores={p_r=..-1}] at @s run scoreboard players add @s p_r 1
##z
execute as @s at @s run tp @e[tag=p_v,scores={p_z=..-1}] ~ ~ 0 facing ~ ~ -10
execute as @s at @s run tp @e[tag=p_v,scores={p_z=1..}] ~ ~ 0 facing ~ ~ 10
execute as @s at @s as @e[tag=p_v] at @s run scoreboard players operation @s p_r = @s p_z
execute as @s at @s as @e[tag=p_v,scores={p_r=..-1}] at @s run scoreboard players operation @s p_r *= "-1" p_r
execute as @e[tag=p_v,scores={p_r=1024..}] at @s run tp @s ^^^1024
execute as @e[tag=p_v,scores={p_r=1024..}] at @s run scoreboard players remove @s p_r 1024

execute as @e[tag=p_v,scores={p_r=512..}] at @s run tp @s ^^^512
execute as @e[tag=p_v,scores={p_r=512..}] at @s run scoreboard players remove @s p_r 512

execute as @e[tag=p_v,scores={p_r=256..}] at @s run tp @s ^^^256
execute as @e[tag=p_v,scores={p_r=256..}] at @s run scoreboard players remove @s p_r 256

execute as @e[tag=p_v,scores={p_r=128..}] at @s run tp @s ^^^128
execute as @e[tag=p_v,scores={p_r=128..}] at @s run scoreboard players remove @s p_r 128

execute as @e[tag=p_v,scores={p_r=64..}] at @s run tp @s ^^^64
execute as @e[tag=p_v,scores={p_r=64..}] at @s run scoreboard players remove @s p_r 64

execute as @e[tag=p_v,scores={p_r=32..}] at @s run tp @s ^^^32
execute as @e[tag=p_v,scores={p_r=32..}] at @s run scoreboard players remove @s p_r 32

execute as @e[tag=p_v,scores={p_r=16..}] at @s run tp @s ^^^16
execute as @e[tag=p_v,scores={p_r=16..}] at @s run scoreboard players remove @s p_r 16

execute as @e[tag=p_v,scores={p_r=8..}] at @s run tp @s ^^^8
execute as @e[tag=p_v,scores={p_r=8..}] at @s run scoreboard players remove @s p_r 8

execute as @e[tag=p_v,scores={p_r=4..}] at @s run tp @s ^^^4
execute as @e[tag=p_v,scores={p_r=4..}] at @s run scoreboard players remove @s p_r 4

execute as @e[tag=p_v,scores={p_r=2..}] at @s run tp @s ^^^2
execute as @e[tag=p_v,scores={p_r=2..}] at @s run scoreboard players remove @s p_r 2

execute as @e[tag=p_v,scores={p_r=1..}] at @s run tp @s ^^^1
execute as @e[tag=p_v,scores={p_r=1..}] at @s run scoreboard players remove @s p_r 1
##归位
execute as @s at @s run tp @s @e[tag=p_v]
##后续处理
kill @e[tag=p_v]

#By Baby_2016