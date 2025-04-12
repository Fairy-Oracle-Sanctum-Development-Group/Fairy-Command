#向量转tp
#计分板
scoreboard objectives add v_r dummy
scoreboard objectives add V_x dummy
scoreboard objectives add V_y dummy
scoreboard objectives add V_z dummy
scoreboard players set "-1" v_r -1
##生成实体
execute as @s at @s run summon minecraft:armor_stand vec_return
##添加tag
execute as @s at @s run tag @e[r=1,type=minecraft:armor_stand,name=vec_return] add v_c
execute as @s at @s run scoreboard players operation @e[r=1,type=minecraft:armor_stand,name=vec_return] v_x = @s v_x
execute as @s at @s run scoreboard players operation @e[r=1,type=minecraft:armor_stand,name=vec_return] v_y = @s v_y
execute as @s at @s run scoreboard players operation @e[r=1,type=minecraft:armor_stand,name=vec_return] v_z = @s v_z
#x
execute as @s at @s run tp @e[tag=v_c,scores={v_x=..-1}] ~~~ facing ~-10 ~ ~
execute as @s at @s run tp @e[tag=v_c,scores={v_x=1..}] ~~~ facing ~10 ~ ~
execute as @s at @s as @e[tag=v_c] at @s run scoreboard players operation @s v_r = @s v_x
execute as @s at @s as @e[tag=v_c,scores={v_r=..-1}] at @s run scoreboard players operation @s v_r *= "-1" v_r
execute as @e[tag=v_c,scores={v_r=8192..}] at @s run tp @s ^^^81.92
execute as @e[tag=v_c,scores={v_r=8192..}] at @s run scoreboard players remove @s v_r 8192

execute as @e[tag=v_c,scores={v_r=4096..}] at @s run tp @s ^^^40.96
execute as @e[tag=v_c,scores={v_r=4096..}] at @s run scoreboard players remove @s v_r 4096

execute as @e[tag=v_c,scores={v_r=2048..}] at @s run tp @s ^^^20.48
execute as @e[tag=v_c,scores={v_r=2048..}] at @s run scoreboard players remove @s v_r 2048

execute as @e[tag=v_c,scores={v_r=1024..}] at @s run tp @s ^^^10.24
execute as @e[tag=v_c,scores={v_r=1024..}] at @s run scoreboard players remove @s v_r 1024

execute as @e[tag=v_c,scores={v_r=512..}] at @s run tp @s ^^^5.12
execute as @e[tag=v_c,scores={v_r=512..}] at @s run scoreboard players remove @s v_r 512

execute as @e[tag=v_c,scores={v_r=256..}] at @s run tp @s ^^^2.56
execute as @e[tag=v_c,scores={v_r=256..}] at @s run scoreboard players remove @s v_r 256

execute as @e[tag=v_c,scores={v_r=128..}] at @s run tp @s ^^^1.28
execute as @e[tag=v_c,scores={v_r=128..}] at @s run scoreboard players remove @s v_r 128

execute as @e[tag=v_c,scores={v_r=64..}] at @s run tp @s ^^^0.64
execute as @e[tag=v_c,scores={v_r=64..}] at @s run scoreboard players remove @s v_r 64

execute as @e[tag=v_c,scores={v_r=32..}] at @s run tp @s ^^^0.32
execute as @e[tag=v_c,scores={v_r=32..}] at @s run scoreboard players remove @s v_r 32

execute as @e[tag=v_c,scores={v_r=16..}] at @s run tp @s ^^^0.16
execute as @e[tag=v_c,scores={v_r=16..}] at @s run scoreboard players remove @s v_r 16

execute as @e[tag=v_c,scores={v_r=8..}] at @s run tp @s ^^^0.08
execute as @e[tag=v_c,scores={v_r=8..}] at @s run scoreboard players remove @s v_r 8

execute as @e[tag=v_c,scores={v_r=4..}] at @s run tp @s ^^^0.04
execute as @e[tag=v_c,scores={v_r=4..}] at @s run scoreboard players remove @s v_r 4

execute as @e[tag=v_c,scores={v_r=2..}] at @s run tp @s ^^^0.02
execute as @e[tag=v_c,scores={v_r=2..}] at @s run scoreboard players remove @s v_r 2

execute as @e[tag=v_c,scores={v_r=1..}] at @s run tp @s ^^^0.01
execute as @e[tag=v_c,scores={v_r=1..}] at @s run scoreboard players remove @s v_r 1
##y
execute as @s at @s as @e[tag=v_c] at @s run scoreboard players operation @s v_r = @s v_y
execute as @e[tag=v_c,scores={v_r=256..}] at @s run tp @s ~~2.56~
execute as @e[tag=v_c,scores={v_r=256..}] at @s run scoreboard players remove @s v_r 256

execute as @e[tag=v_c,scores={v_r=128..}] at @s run tp @s ~~1.28~
execute as @e[tag=v_c,scores={v_r=128..}] at @s run scoreboard players remove @s v_r 128

execute as @e[tag=v_c,scores={v_r=64..}] at @s run tp @s ~~0.64~
execute as @e[tag=v_c,scores={v_r=64..}] at @s run scoreboard players remove @s v_r 54

execute as @e[tag=v_c,scores={v_r=32..}] at @s run tp @s ~~0.32~
execute as @e[tag=v_c,scores={v_r=32..}] at @s run scoreboard players remove @s v_r 32

execute as @e[tag=v_c,scores={v_r=16..}] at @s run tp @s ~~0.16~
execute as @e[tag=v_c,scores={v_r=16..}] at @s run scoreboard players remove @s v_r 16

execute as @e[tag=v_c,scores={v_r=8..}] at @s run tp @s ~~0.08~
execute as @e[tag=v_c,scores={v_r=8..}] at @s run scoreboard players remove @s v_r 8

execute as @e[tag=v_c,scores={v_r=4..}] at @s run tp @s ~~0.04~
execute as @e[tag=v_c,scores={v_r=4..}] at @s run scoreboard players remove @s v_r 4

execute as @e[tag=v_c,scores={v_r=2..}] at @s run tp @s ~~0.02~
execute as @e[tag=v_c,scores={v_r=2..}] at @s run scoreboard players remove @s v_r 2

execute as @e[tag=v_c,scores={v_r=1..}] at @s run tp @s ~~0.01~
execute as @e[tag=v_c,scores={v_r=1..}] at @s run scoreboard players remove @s v_r 1
#
execute as @e[tag=v_c,scores={v_r=..-256}] at @s run tp @s ~~-2.56~
execute as @e[tag=v_c,scores={v_r=..-256}] at @s run scoreboard players add @s v_r 256

execute as @e[tag=v_c,scores={v_r=..-128}] at @s run tp @s ~~-1.28~
execute as @e[tag=v_c,scores={v_r=..-128}] at @s run scoreboard players add @s v_r 128

execute as @e[tag=v_c,scores={v_r=..-64}] at @s run tp @s ~~-0.64~
execute as @e[tag=v_c,scores={v_r=..-64}] at @s run scoreboard players add @s v_r 64

execute as @e[tag=v_c,scores={v_r=..-32}] at @s run tp @s ~~-0.32~
execute as @e[tag=v_c,scores={v_r=..-32}] at @s run scoreboard players add @s v_r 32

execute as @e[tag=v_c,scores={v_r=..-16}] at @s run tp @s ~~-0.16~
execute as @e[tag=v_c,scores={v_r=..-16}] at @s run scoreboard players add @s v_r 16

execute as @e[tag=v_c,scores={v_r=..-8}] at @s run tp @s ~~-0.08~
execute as @e[tag=v_c,scores={v_r=..-8}] at @s run scoreboard players add @s v_r 8

execute as @e[tag=v_c,scores={v_r=..-4}] at @s run tp @s ~~-0.04~
execute as @e[tag=v_c,scores={v_r=..-4}] at @s run scoreboard players add @s v_r 4

execute as @e[tag=v_c,scores={v_r=..-2}] at @s run tp @s ~~-0.02~
execute as @e[tag=v_c,scores={v_r=..-2}] at @s run scoreboard players add @s v_r 2

execute as @e[tag=v_c,scores={v_r=..-1}] at @s run tp @s ~~-0.01~
execute as @e[tag=v_c,scores={v_r=..-1}] at @s run scoreboard players add @s v_r 1
##z
execute as @s at @s as @e[tag=v_c,scores={v_z=..-1}] at @s run tp @s ~ ~ ~ facing ~ ~ ~-10
execute as @s at @s as @e[tag=v_c,scores={v_z=1..}] at @s run tp @s ~ ~ ~ facing ~ ~ ~10
execute as @s at @s as @e[tag=v_c] at @s run scoreboard players operation @s v_r = @s v_z
execute as @s at @s as @e[tag=v_c,scores={v_r=..-1}] at @s run scoreboard players operation @s v_r *= "-1" v_r
execute as @e[tag=v_c,scores={v_r=8192..}] at @s run tp @s ^^^81.92
execute as @e[tag=v_c,scores={v_r=8192..}] at @s run scoreboard players remove @s v_r 8192

execute as @e[tag=v_c,scores={v_r=4096..}] at @s run tp @s ^^^40.96
execute as @e[tag=v_c,scores={v_r=4096..}] at @s run scoreboard players remove @s v_r 4096

execute as @e[tag=v_c,scores={v_r=2048..}] at @s run tp @s ^^^20.48
execute as @e[tag=v_c,scores={v_r=2048..}] at @s run scoreboard players remove @s v_r 2048

execute as @e[tag=v_c,scores={v_r=1024..}] at @s run tp @s ^^^10.24
execute as @e[tag=v_c,scores={v_r=1024..}] at @s run scoreboard players remove @s v_r 1024

execute as @e[tag=v_c,scores={v_r=512..}] at @s run tp @s ^^^5.12
execute as @e[tag=v_c,scores={v_r=512..}] at @s run scoreboard players remove @s v_r 512

execute as @e[tag=v_c,scores={v_r=256..}] at @s run tp @s ^^^2.56
execute as @e[tag=v_c,scores={v_r=256..}] at @s run scoreboard players remove @s v_r 256

execute as @e[tag=v_c,scores={v_r=128..}] at @s run tp @s ^^^1.28
execute as @e[tag=v_c,scores={v_r=128..}] at @s run scoreboard players remove @s v_r 128

execute as @e[tag=v_c,scores={v_r=64..}] at @s run tp @s ^^^0.64
execute as @e[tag=v_c,scores={v_r=64..}] at @s run scoreboard players remove @s v_r 64

execute as @e[tag=v_c,scores={v_r=32..}] at @s run tp @s ^^^0.32
execute as @e[tag=v_c,scores={v_r=32..}] at @s run scoreboard players remove @s v_r 32

execute as @e[tag=v_c,scores={v_r=16..}] at @s run tp @s ^^^0.16
execute as @e[tag=v_c,scores={v_r=16..}] at @s run scoreboard players remove @s v_r 16

execute as @e[tag=v_c,scores={v_r=8..}] at @s run tp @s ^^^0.08
execute as @e[tag=v_c,scores={v_r=8..}] at @s run scoreboard players remove @s v_r 8

execute as @e[tag=v_c,scores={v_r=4..}] at @s run tp @s ^^^0.04
execute as @e[tag=v_c,scores={v_r=4..}] at @s run scoreboard players remove @s v_r 4

execute as @e[tag=v_c,scores={v_r=2..}] at @s run tp @s ^^^0.02
execute as @e[tag=v_c,scores={v_r=2..}] at @s run scoreboard players remove @s v_r 2

execute as @e[tag=v_c,scores={v_r=1..}] at @s run tp @s ^^^0.01
execute as @e[tag=v_c,scores={v_r=1..}] at @s run scoreboard players remove @s v_r 1
##归位
execute as @s at @s run tp @s @e[tag=v_c]
##后续处理
kill @e[tag=v_c]

#By Baby_2016