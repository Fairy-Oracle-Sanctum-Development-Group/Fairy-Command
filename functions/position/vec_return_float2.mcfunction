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
execute as @e[tag=v_c,scores={v_r=8000000..}] at @s run tp @s ^^^80
execute as @e[tag=v_c,scores={v_r=8000000..}] at @s run scoreboard players remove @s v_r 8000000

execute as @e[tag=v_c,scores={v_r=4000000..}] at @s run tp @s ^^^40
execute as @e[tag=v_c,scores={v_r=4000000..}] at @s run scoreboard players remove @s v_r 4000000

execute as @e[tag=v_c,scores={v_r=2000000..}] at @s run tp @s ^^^20
execute as @e[tag=v_c,scores={v_r=2000000..}] at @s run scoreboard players remove @s v_r 2000000

execute as @e[tag=v_c,scores={v_r=1000000..}] at @s run tp @s ^^^10
execute as @e[tag=v_c,scores={v_r=1000000..}] at @s run scoreboard players remove @s v_r 1000000

execute as @e[tag=v_c,scores={v_r=800000..}] at @s run tp @s ^^^8
execute as @e[tag=v_c,scores={v_r=800000..}] at @s run scoreboard players remove @s v_r 800000

execute as @e[tag=v_c,scores={v_r=400000..}] at @s run tp @s ^^^4
execute as @e[tag=v_c,scores={v_r=400000..}] at @s run scoreboard players remove @s v_r 400000

execute as @e[tag=v_c,scores={v_r=200000..}] at @s run tp @s ^^^2
execute as @e[tag=v_c,scores={v_r=200000..}] at @s run scoreboard players remove @s v_r 200000

execute as @e[tag=v_c,scores={v_r=100000..}] at @s run tp @s ^^^1
execute as @e[tag=v_c,scores={v_r=100000..}] at @s run scoreboard players remove @s v_r 100000

execute as @e[tag=v_c,scores={v_r=80000..}] at @s run tp @s ^^^0.8
execute as @e[tag=v_c,scores={v_r=80000..}] at @s run scoreboard players remove @s v_r 80000

execute as @e[tag=v_c,scores={v_r=40000..}] at @s run tp @s ^^^0.4
execute as @e[tag=v_c,scores={v_r=40000..}] at @s run scoreboard players remove @s v_r 40000

execute as @e[tag=v_c,scores={v_r=20000..}] at @s run tp @s ^^^0.2
execute as @e[tag=v_c,scores={v_r=20000..}] at @s run scoreboard players remove @s v_r 20000

execute as @e[tag=v_c,scores={v_r=10000..}] at @s run tp @s ^^^0.1
execute as @e[tag=v_c,scores={v_r=10000..}] at @s run scoreboard players remove @s v_r 10000

execute as @e[tag=v_c,scores={v_r=8000..}] at @s run tp @s ^^^0.08
execute as @e[tag=v_c,scores={v_r=8000..}] at @s run scoreboard players remove @s v_r 8000

execute as @e[tag=v_c,scores={v_r=4000..}] at @s run tp @s ^^^0.04
execute as @e[tag=v_c,scores={v_r=4000..}] at @s run scoreboard players remove @s v_r 4000

execute as @e[tag=v_c,scores={v_r=2000..}] at @s run tp @s ^^^0.02
execute as @e[tag=v_c,scores={v_r=2000..}] at @s run scoreboard players remove @s v_r 2000

execute as @e[tag=v_c,scores={v_r=1000..}] at @s run tp @s ^^^0.01
execute as @e[tag=v_c,scores={v_r=1000..}] at @s run scoreboard players remove @s v_r 1000

execute as @e[tag=v_c,scores={v_r=800..}] at @s run tp @s ^^^0.008
execute as @e[tag=v_c,scores={v_r=800..}] at @s run scoreboard players remove @s v_r 800

execute as @e[tag=v_c,scores={v_r=400..}] at @s run tp @s ^^^0.004
execute as @e[tag=v_c,scores={v_r=400..}] at @s run scoreboard players remove @s v_r 400

execute as @e[tag=v_c,scores={v_r=200..}] at @s run tp @s ^^^0.002
execute as @e[tag=v_c,scores={v_r=200..}] at @s run scoreboard players remove @s v_r 200

execute as @e[tag=v_c,scores={v_r=100..}] at @s run tp @s ^^^0.001
execute as @e[tag=v_c,scores={v_r=100..}] at @s run scoreboard players remove @s v_r 100

execute as @e[tag=v_c,scores={v_r=80..}] at @s run tp @s ^^^0.0008
execute as @e[tag=v_c,scores={v_r=80..}] at @s run scoreboard players remove @s v_r 80

execute as @e[tag=v_c,scores={v_r=40..}] at @s run tp @s ^^^0.0004
execute as @e[tag=v_c,scores={v_r=40..}] at @s run scoreboard players remove @s v_r 40

execute as @e[tag=v_c,scores={v_r=20..}] at @s run tp @s ^^^0.0002
execute as @e[tag=v_c,scores={v_r=20..}] at @s run scoreboard players remove @s v_r 20

execute as @e[tag=v_c,scores={v_r=10..}] at @s run tp @s ^^^0.0001
execute as @e[tag=v_c,scores={v_r=10..}] at @s run scoreboard players remove @s v_r 10

execute as @e[tag=v_c,scores={v_r=8..}] at @s run tp @s ^^^0.00008
execute as @e[tag=v_c,scores={v_r=8..}] at @s run scoreboard players remove @s v_r 8

execute as @e[tag=v_c,scores={v_r=4..}] at @s run tp @s ^^^0.00004
execute as @e[tag=v_c,scores={v_r=4..}] at @s run scoreboard players remove @s v_r 4

execute as @e[tag=v_c,scores={v_r=2..}] at @s run tp @s ^^^0.00002
execute as @e[tag=v_c,scores={v_r=2..}] at @s run scoreboard players remove @s v_r 2

execute as @e[tag=v_c,scores={v_r=1..}] at @s run tp @s ^^^0.00001
execute as @e[tag=v_c,scores={v_r=1..}] at @s run scoreboard players remove @s v_r 1
##y
execute as @s at @s as @e[tag=v_c] at @s run scoreboard players operation @s v_r = @s v_y
execute as @e[tag=v_c,scores={v_r=80000..}] at @s run tp @s ~~8~
execute as @e[tag=v_c,scores={v_r=80000..}] at @s run scoreboard players remove @s v_r 80000

execute as @e[tag=v_c,scores={v_r=40000..}] at @s run tp @s ~~4~
execute as @e[tag=v_c,scores={v_r=40000..}] at @s run scoreboard players remove @s v_r 40000

execute as @e[tag=v_c,scores={v_r=20000..}] at @s run tp @s ~~2~
execute as @e[tag=v_c,scores={v_r=20000..}] at @s run scoreboard players remove @s v_r 20000

execute as @e[tag=v_c,scores={v_r=10000..}] at @s run tp @s ~~1~
execute as @e[tag=v_c,scores={v_r=10000..}] at @s run scoreboard players remove @s v_r 10000

execute as @e[tag=v_c,scores={v_r=8000..}] at @s run tp @s ~~0.8~
execute as @e[tag=v_c,scores={v_r=8000..}] at @s run scoreboard players remove @s v_r 8000

execute as @e[tag=v_c,scores={v_r=4000..}] at @s run tp @s ~~0.4~
execute as @e[tag=v_c,scores={v_r=4000..}] at @s run scoreboard players remove @s v_r 4000

execute as @e[tag=v_c,scores={v_r=2000..}] at @s run tp @s ~~0.2~
execute as @e[tag=v_c,scores={v_r=2000..}] at @s run scoreboard players remove @s v_r 2000

execute as @e[tag=v_c,scores={v_r=1000..}] at @s run tp @s ~~0.1~
execute as @e[tag=v_c,scores={v_r=1000..}] at @s run scoreboard players remove @s v_r 1000

execute as @e[tag=v_c,scores={v_r=800..}] at @s run tp @s ~~0.08~
execute as @e[tag=v_c,scores={v_r=800..}] at @s run scoreboard players remove @s v_r 800

execute as @e[tag=v_c,scores={v_r=400..}] at @s run tp @s ~~0.04~
execute as @e[tag=v_c,scores={v_r=400..}] at @s run scoreboard players remove @s v_r 400

execute as @e[tag=v_c,scores={v_r=200..}] at @s run tp @s ~~0.02~
execute as @e[tag=v_c,scores={v_r=200..}] at @s run scoreboard players remove @s v_r 200

execute as @e[tag=v_c,scores={v_r=100..}] at @s run tp @s ~~0.01~
execute as @e[tag=v_c,scores={v_r=100..}] at @s run scoreboard players remove @s v_r 100

execute as @e[tag=v_c,scores={v_r=80..}] at @s run tp @s ~~0.008~
execute as @e[tag=v_c,scores={v_r=80..}] at @s run scoreboard players remove @s v_r 80

execute as @e[tag=v_c,scores={v_r=40..}] at @s run tp @s ~~0.004~
execute as @e[tag=v_c,scores={v_r=40..}] at @s run scoreboard players remove @s v_r 40

execute as @e[tag=v_c,scores={v_r=20..}] at @s run tp @s ~~0.002~
execute as @e[tag=v_c,scores={v_r=20..}] at @s run scoreboard players remove @s v_r 20

execute as @e[tag=v_c,scores={v_r=10..}] at @s run tp @s ~~0.001~
execute as @e[tag=v_c,scores={v_r=10..}] at @s run scoreboard players remove @s v_r 10

execute as @e[tag=v_c,scores={v_r=8..}] at @s run tp @s ~~0.0008~
execute as @e[tag=v_c,scores={v_r=8..}] at @s run scoreboard players remove @s v_r 8

execute as @e[tag=v_c,scores={v_r=4..}] at @s run tp @s ~~0.0004~
execute as @e[tag=v_c,scores={v_r=4..}] at @s run scoreboard players remove @s v_r 4

execute as @e[tag=v_c,scores={v_r=2..}] at @s run tp @s ~~0.0002~
execute as @e[tag=v_c,scores={v_r=2..}] at @s run scoreboard players remove @s v_r 2

execute as @e[tag=v_c,scores={v_r=1..}] at @s run tp @s ~~0.0001~
execute as @e[tag=v_c,scores={v_r=1..}] at @s run scoreboard players remove @s v_r 1
#
execute as @e[tag=v_c,scores={v_r=..-80000}] at @s run tp @s ~~-8~
execute as @e[tag=v_c,scores={v_r=..-80000}] at @s run scoreboard players add @s v_r 80000

execute as @e[tag=v_c,scores={v_r=..-40000}] at @s run tp @s ~~-4~
execute as @e[tag=v_c,scores={v_r=..-40000}] at @s run scoreboard players add @s v_r 40000

execute as @e[tag=v_c,scores={v_r=..-20000}] at @s run tp @s ~~-2~
execute as @e[tag=v_c,scores={v_r=..-20000}] at @s run scoreboard players add @s v_r 20000

execute as @e[tag=v_c,scores={v_r=..-10000}] at @s run tp @s ~~-1~
execute as @e[tag=v_c,scores={v_r=..-10000}] at @s run scoreboard players add @s v_r 10000

execute as @e[tag=v_c,scores={v_r=..-8000}] at @s run tp @s ~~-0.8~
execute as @e[tag=v_c,scores={v_r=..-8000}] at @s run scoreboard players add @s v_r 8000

execute as @e[tag=v_c,scores={v_r=..-4000}] at @s run tp @s ~~-0.4~
execute as @e[tag=v_c,scores={v_r=..-4000}] at @s run scoreboard players add @s v_r 4000

execute as @e[tag=v_c,scores={v_r=..-2000}] at @s run tp @s ~~-0.2~
execute as @e[tag=v_c,scores={v_r=..-2000}] at @s run scoreboard players add @s v_r 2000

execute as @e[tag=v_c,scores={v_r=..-1000}] at @s run tp @s ~~-0.1~
execute as @e[tag=v_c,scores={v_r=..-1000}] at @s run scoreboard players add @s v_r 1000

execute as @e[tag=v_c,scores={v_r=..-800}] at @s run tp @s ~~-0.08~
execute as @e[tag=v_c,scores={v_r=..-800}] at @s run scoreboard players add @s v_r 800

execute as @e[tag=v_c,scores={v_r=..-400}] at @s run tp @s ~~-0.04~
execute as @e[tag=v_c,scores={v_r=..-400}] at @s run scoreboard players add @s v_r 400

execute as @e[tag=v_c,scores={v_r=..-200}] at @s run tp @s ~~-0.02~
execute as @e[tag=v_c,scores={v_r=..-200}] at @s run scoreboard players add @s v_r 200

execute as @e[tag=v_c,scores={v_r=..-100}] at @s run tp @s ~~-0.01~
execute as @e[tag=v_c,scores={v_r=..-100}] at @s run scoreboard players add @s v_r 100

execute as @e[tag=v_c,scores={v_r=..-80}] at @s run tp @s ~~-0.008~
execute as @e[tag=v_c,scores={v_r=..-80}] at @s run scoreboard players add @s v_r 80

execute as @e[tag=v_c,scores={v_r=..-40}] at @s run tp @s ~~-0.004~
execute as @e[tag=v_c,scores={v_r=..-40}] at @s run scoreboard players add @s v_r 40

execute as @e[tag=v_c,scores={v_r=..-20}] at @s run tp @s ~~-0.002~
execute as @e[tag=v_c,scores={v_r=..-20}] at @s run scoreboard players add @s v_r 20

execute as @e[tag=v_c,scores={v_r=..-10}] at @s run tp @s ~~-0.001~
execute as @e[tag=v_c,scores={v_r=..-10}] at @s run scoreboard players add @s v_r 10

execute as @e[tag=v_c,scores={v_r=..-8}] at @s run tp @s ~~-0.0008~
execute as @e[tag=v_c,scores={v_r=..-8}] at @s run scoreboard players add @s v_r 8

execute as @e[tag=v_c,scores={v_r=..-4}] at @s run tp @s ~~-0.0004~
execute as @e[tag=v_c,scores={v_r=..-4}] at @s run scoreboard players add @s v_r 4

execute as @e[tag=v_c,scores={v_r=..-2}] at @s run tp @s ~~-0.0002~
execute as @e[tag=v_c,scores={v_r=..-2}] at @s run scoreboard players add @s v_r 2

execute as @e[tag=v_c,scores={v_r=..-1}] at @s run tp @s ~~-0.0001~
execute as @e[tag=v_c,scores={v_r=..-1}] at @s run scoreboard players add @s v_r 1
##z
execute as @s at @s as @e[tag=v_c,scores={v_z=..-1}] at @s run tp @s ~ ~ ~ facing ~ ~ ~-10
execute as @s at @s as @e[tag=v_c,scores={v_z=1..}] at @s run tp @s ~ ~ ~ facing ~ ~ ~10
execute as @s at @s as @e[tag=v_c] at @s run scoreboard players operation @s v_r = @s v_z
execute as @s at @s as @e[tag=v_c,scores={v_r=..-1}] at @s run scoreboard players operation @s v_r *= "-1" v_r
execute as @e[tag=v_c,scores={v_r=8000000..}] at @s run tp @s ^^^80
execute as @e[tag=v_c,scores={v_r=8000000..}] at @s run scoreboard players remove @s v_r 8000000

execute as @e[tag=v_c,scores={v_r=4000000..}] at @s run tp @s ^^^40
execute as @e[tag=v_c,scores={v_r=4000000..}] at @s run scoreboard players remove @s v_r 4000000

execute as @e[tag=v_c,scores={v_r=2000000..}] at @s run tp @s ^^^20
execute as @e[tag=v_c,scores={v_r=2000000..}] at @s run scoreboard players remove @s v_r 2000000

execute as @e[tag=v_c,scores={v_r=1000000..}] at @s run tp @s ^^^10
execute as @e[tag=v_c,scores={v_r=1000000..}] at @s run scoreboard players remove @s v_r 1000000

execute as @e[tag=v_c,scores={v_r=800000..}] at @s run tp @s ^^^8
execute as @e[tag=v_c,scores={v_r=800000..}] at @s run scoreboard players remove @s v_r 800000

execute as @e[tag=v_c,scores={v_r=400000..}] at @s run tp @s ^^^4
execute as @e[tag=v_c,scores={v_r=400000..}] at @s run scoreboard players remove @s v_r 400000

execute as @e[tag=v_c,scores={v_r=200000..}] at @s run tp @s ^^^2
execute as @e[tag=v_c,scores={v_r=200000..}] at @s run scoreboard players remove @s v_r 200000

execute as @e[tag=v_c,scores={v_r=100000..}] at @s run tp @s ^^^1
execute as @e[tag=v_c,scores={v_r=100000..}] at @s run scoreboard players remove @s v_r 100000

execute as @e[tag=v_c,scores={v_r=80000..}] at @s run tp @s ^^^0.8
execute as @e[tag=v_c,scores={v_r=80000..}] at @s run scoreboard players remove @s v_r 80000

execute as @e[tag=v_c,scores={v_r=40000..}] at @s run tp @s ^^^0.4
execute as @e[tag=v_c,scores={v_r=40000..}] at @s run scoreboard players remove @s v_r 40000

execute as @e[tag=v_c,scores={v_r=20000..}] at @s run tp @s ^^^0.2
execute as @e[tag=v_c,scores={v_r=20000..}] at @s run scoreboard players remove @s v_r 20000

execute as @e[tag=v_c,scores={v_r=10000..}] at @s run tp @s ^^^0.1
execute as @e[tag=v_c,scores={v_r=10000..}] at @s run scoreboard players remove @s v_r 10000

execute as @e[tag=v_c,scores={v_r=8000..}] at @s run tp @s ^^^0.08
execute as @e[tag=v_c,scores={v_r=8000..}] at @s run scoreboard players remove @s v_r 8000

execute as @e[tag=v_c,scores={v_r=4000..}] at @s run tp @s ^^^0.04
execute as @e[tag=v_c,scores={v_r=4000..}] at @s run scoreboard players remove @s v_r 4000

execute as @e[tag=v_c,scores={v_r=2000..}] at @s run tp @s ^^^0.02
execute as @e[tag=v_c,scores={v_r=2000..}] at @s run scoreboard players remove @s v_r 2000

execute as @e[tag=v_c,scores={v_r=1000..}] at @s run tp @s ^^^0.01
execute as @e[tag=v_c,scores={v_r=1000..}] at @s run scoreboard players remove @s v_r 1000

execute as @e[tag=v_c,scores={v_r=800..}] at @s run tp @s ^^^0.008
execute as @e[tag=v_c,scores={v_r=800..}] at @s run scoreboard players remove @s v_r 800

execute as @e[tag=v_c,scores={v_r=400..}] at @s run tp @s ^^^0.004
execute as @e[tag=v_c,scores={v_r=400..}] at @s run scoreboard players remove @s v_r 400

execute as @e[tag=v_c,scores={v_r=200..}] at @s run tp @s ^^^0.002
execute as @e[tag=v_c,scores={v_r=200..}] at @s run scoreboard players remove @s v_r 200

execute as @e[tag=v_c,scores={v_r=100..}] at @s run tp @s ^^^0.001
execute as @e[tag=v_c,scores={v_r=100..}] at @s run scoreboard players remove @s v_r 100

execute as @e[tag=v_c,scores={v_r=80..}] at @s run tp @s ^^^0.0008
execute as @e[tag=v_c,scores={v_r=80..}] at @s run scoreboard players remove @s v_r 80

execute as @e[tag=v_c,scores={v_r=40..}] at @s run tp @s ^^^0.0004
execute as @e[tag=v_c,scores={v_r=40..}] at @s run scoreboard players remove @s v_r 40

execute as @e[tag=v_c,scores={v_r=20..}] at @s run tp @s ^^^0.0002
execute as @e[tag=v_c,scores={v_r=20..}] at @s run scoreboard players remove @s v_r 20

execute as @e[tag=v_c,scores={v_r=10..}] at @s run tp @s ^^^0.0001
execute as @e[tag=v_c,scores={v_r=10..}] at @s run scoreboard players remove @s v_r 10

execute as @e[tag=v_c,scores={v_r=8..}] at @s run tp @s ^^^0.00008
execute as @e[tag=v_c,scores={v_r=8..}] at @s run scoreboard players remove @s v_r 8

execute as @e[tag=v_c,scores={v_r=4..}] at @s run tp @s ^^^0.00004
execute as @e[tag=v_c,scores={v_r=4..}] at @s run scoreboard players remove @s v_r 4

execute as @e[tag=v_c,scores={v_r=2..}] at @s run tp @s ^^^0.00002
execute as @e[tag=v_c,scores={v_r=2..}] at @s run scoreboard players remove @s v_r 2

execute as @e[tag=v_c,scores={v_r=1..}] at @s run tp @s ^^^0.00001
execute as @e[tag=v_c,scores={v_r=1..}] at @s run scoreboard players remove @s v_r 1
##归位
execute as @s at @s run tp @s @e[tag=v_c]
##后续处理
kill @e[tag=v_c]

#By Baby_2016