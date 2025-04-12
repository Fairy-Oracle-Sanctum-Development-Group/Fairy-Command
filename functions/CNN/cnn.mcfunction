#手写识别
##计分板
scoreboard objectives add a dummy 
scoreboard objectives add b dummy 
scoreboard objectives add x dummy 
scoreboard objectives add z dummy 
scoreboard players set "9" a 9
scoreboard players set "18" a 18

##工具
execute as @e[type=snowball] at @s run fill ~ ~-1 ~ ~ ~-2 ~ minecraft:black_concrete replace minecraft:white_concrete 
execute as @e[type=fishing_hook] at @s run fill 0 -60 0 15 -60 15 minecraft:white_concrete
execute as @e[type=fishing_hook] at @s run fill 0 -59 0 15 -40 15 minecraft:air
execute as @e[type=fishing_hook] at @s run fill 16 -60 0 32 -40 15 minecraft:air
execute as @e[type=fishing_hook] at @s run kill @e
execute as @e[type=armor_stand] at @s run tp @s ~~~

##第一层卷积
execute as @e[type=egg] at @s run scoreboard players set @p a 1
execute as @e[type=egg] at @s run clone 0 -60 0 15 -60 15 16 -60 0
execute as @e[type=egg] at @s run kill @e
execute as @a[scores={a=1}] at @s run summon minecraft:armor_stand con 0 -60 0
execute as @a[scores={a=1}] at @s run summon minecraft:armor_stand con 16 -60 0
scoreboard players set @e[name=con,c=1] b 1
scoreboard players set @e[name=con,c=-1] b 2
scoreboard players set @a[scores={a=1}] a 2
execute as @e[name=con] at @s run scoreboard players set @s a 0
#execute @a[scores={a=2}] ~~~ execute @e[name=con,scores={b=1}] ~~~ detect ~~~ minecraft:concrete 15 scoreboard players add @s a 100
#execute @a[scores={a=2}] ~~~ execute @e[name=con,scores={b=1}] ~~~ detect ~1~~ minecraft:concrete 15 scoreboard players add @s a 100
#execute @a[scores={a=2}] ~~~ execute @e[name=con,scores={b=1}] ~~~ detect ~-1~~ minecraft:concrete 15 scoreboard players add @s a 100
execute as @a[scores={a=2}] at @s as @e[name=con,scores={b=1}] at @s if block ~ ~ ~1 minecraft:black_concrete run scoreboard players add @s a 100
execute as @a[scores={a=2}] at @s as @e[name=con,scores={b=1}] at @s if block ~ ~ ~-1 minecraft:black_concrete run scoreboard players add @s a -100
execute as @a[scores={a=2}] at @s as @e[name=con,scores={b=1}] at @s if block ~1 ~ ~1 minecraft:black_concrete run scoreboard players add @s a 100
execute as @a[scores={a=2}] at @s as @e[name=con,scores={b=1}] at @s if block ~-1 ~ ~-1 minecraft:black_concrete run scoreboard players add @s a -100
execute as @a[scores={a=2}] at @s as @e[name=con,scores={b=1}] at @s if block ~1 ~ ~-1 minecraft:black_concrete run scoreboard players add @s a -100
execute as @a[scores={a=2}] at @s as @e[name=con,scores={b=1}] at @s if block ~-1 ~ ~1 minecraft:black_concrete run scoreboard players add @s a 100
#
#execute @a[scores={a=2}] ~~~ execute @e[name=con,scores={b=2}] ~~~ detect ~~~ minecraft:concrete 15 scoreboard players add @s a 100
execute as @a[scores={a=2}] at @s as @e[name=con,scores={b=2}] at @s if block ~1 ~ ~ minecraft:black_concrete run scoreboard players add @s a 100
execute as @a[scores={a=2}] at @s as @e[name=con,scores={b=2}] at @s if block ~-1 ~ ~ minecraft:black_concrete run scoreboard players add @s a -100
#execute @a[scores={a=2}] ~~~ execute @e[name=con,scores={b=2}] ~~~ detect ~~~1 minecraft:concrete 15 scoreboard players add @s a 100
#execute @a[scores={a=2}] ~~~ execute @e[name=con,scores={b=2}] ~~~ detect ~~~-1 minecraft:concrete 15 scoreboard players add @s a -100
execute as @a[scores={a=2}] at @s as @e[name=con,scores={b=2}] at @s if block ~1 ~ ~1 minecraft:black_concrete run scoreboard players add @s a 100
execute as @a[scores={a=2}] at @s as @e[name=con,scores={b=2}] at @s if block ~-1 ~ ~-1 minecraft:black_concrete run scoreboard players add @s a -100
execute as @a[scores={a=2}] at @s as @e[name=con,scores={b=2}] at @s if block ~1 ~ ~-1 minecraft:black_concrete run scoreboard players add @s a 100
execute as @a[scores={a=2}] at @s as @e[name=con,scores={b=2}] at @s if block ~-1 ~ ~1 minecraft:black_concrete run scoreboard players add @s a -100
execute as @e[name=con] at @s run scoreboard players operation @s a /= "9" a
execute as @e[name=con,scores={a=..5}] at @s run setblock ~ ~4 ~ minecraft:white_concrete
execute as @e[name=con,scores={a=26..}] at @s run setblock ~ ~4 ~ minecraft:black_concrete
execute as @e[name=con,scores={a=6..25}] at @s run setblock ~ ~4 ~ minecraft:gray_concrete
execute as @e[name=con] at @s run tp @s ~1~~ 
execute as @e[name=con] at @s run scoreboard players add @s x 1
execute as @e[name=con,scores={x=16}] at @s run tp @s ~-16~~1
execute as @e[name=con,scores={x=16}] at @s run scoreboard players add @s z 1
execute as @e[name=con,scores={x=16}] at @s run scoreboard players set @s x 0
execute as @e[name=con,scores={z=16}] at @s run scoreboard players set @p a 3
kill @e[name=con,scores={z=16}]

#最大池化
execute as @a[scores={a=3}] at @s run summon minecraft:armor_stand pool 0 -56 0
execute as @a[scores={a=3}] at @s run summon minecraft:armor_stand pool_set 0 -55 0
scoreboard players set @a[scores={a=3}] a 4
execute as @e[name=pool] at @s if block ~ ~ ~ minecraft:white_concrete as @e[name=pool_set] at @s run setblock ~ ~ ~ minecraft:white_concrete
execute as @e[name=pool] at @s if block ~1 ~ ~ minecraft:white_concrete as @e[name=pool_set] at @s run setblock ~ ~ ~ minecraft:white_concrete
execute as @e[name=pool] at @s if block ~ ~ ~1 minecraft:white_concrete as @e[name=pool_set] at @s run setblock ~ ~ ~ minecraft:white_concrete
execute as @e[name=pool] at @s if block ~1 ~ ~1 minecraft:white_concrete as @e[name=pool_set] at @s run setblock ~ ~ ~ minecraft:white_concrete
execute as @e[name=pool] at @s if block ~ ~ ~ minecraft:gray_concrete as @e[name=pool_set] at @s run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[name=pool] at @s if block ~1 ~ ~ minecraft:gray_concrete as @e[name=pool_set] at @s run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[name=pool] at @s if block ~ ~ ~1 minecraft:gray_concrete as @e[name=pool_set] at @s run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[name=pool] at @s if block ~1 ~ ~1 minecraft:gray_concrete as @e[name=pool_set] at @s run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[name=pool] at @s if block ~ ~ ~ minecraft:black_concrete as @e[name=pool_set] at @s run setblock ~ ~ ~ minecraft:black_concrete
execute as @e[name=pool] at @s if block ~1 ~ ~ minecraft:black_concrete as @e[name=pool_set] at @s run setblock ~ ~ ~ minecraft:black_concrete
execute as @e[name=pool] at @s if block ~ ~ ~1 minecraft:black_concrete as @e[name=pool_set] at @s run setblock ~ ~ ~ minecraft:black_concrete
execute as @e[name=pool] at @s if block ~1 ~ ~1 minecraft:black_concrete as @e[name=pool_set] at @s run setblock ~ ~ ~ minecraft:black_concrete
execute as @e[name=pool] at @s run fill ~1 ~ ~1 ~ ~ ~ minecraft:air
execute as @e[name=pool] at @s run tp @s ~2~~
execute as @e[name=pool_set] at @s run tp @s ~1~~
scoreboard players add @e[name=pool] x 1
scoreboard players add @e[name=pool_set] x 1
execute as @e[name=pool,scores={x=16}] at @s run tp @s ~-32~~2
execute as @e[name=pool_set,scores={x=16}] at @s run tp @s ~-16~~1
execute as @e[name=pool,scores={x=16}] at @s run scoreboard players add @s z 1
execute as @e[name=pool,scores={x=16}] at @s run scoreboard players set @s x 0
execute as @e[name=pool_set,scores={x=16}] at @s run scoreboard players add @s z 1
execute as @e[name=pool_set,scores={x=16}] at @s run scoreboard players set @s x 0
execute as @e[name=pool_set,scores={z=8}] at @s run scoreboard players set @p[scores={a=4}] a 7
execute as @e[name=pool_set,scores={z=8}] at @s run clone 8 -55 0 15 -55 7 0 -54 0 masked move
execute as @e[name=pool_set,scores={z=8}] at @s run fill 16 -60 0 32 -40 15 minecraft:air
kill @e[name=pool,scores={z=8}]
kill @e[name=pool_set,scores={z=8}]

##第二层卷积
execute as @a[scores={a=7}] at @s run clone 0 -55 0 7 -54 7 8 -55 0
execute as @a[scores={a=7}] at @s run summon minecraft:armor_stand con2 0 -55 0
execute as @a[scores={a=7}] at @s run summon minecraft:armor_stand con2 0 -54 0
execute as @a[scores={a=7}] at @s run summon minecraft:armor_stand con2 8 -55 0
execute as @a[scores={a=7}] at @s run summon minecraft:armor_stand con2 8 -54 0
scoreboard players set @e[name=con2,c=2] b 1
scoreboard players set @e[name=con2,c=-2] b 2
scoreboard players set @a[scores={a=7}] a 8
execute as @e[name=con] at @s run scoreboard players set @s a 0
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @s a 100
#execute @a[scores={a=8}] ~~~ execute @e[name=con2,scores={b=1}] ~~~ detect ~1~~ minecraft:concrete 15 scoreboard players add @s a 100
#execute @a[scores={a=8}] ~~~ execute @e[name=con2,scores={b=1}] ~~~ detect ~-1~~ minecraft:concrete 15 scoreboard players add @s a 100
#execute @a[scores={a=8}] ~~~ execute @e[name=con2,scores={b=1}] ~~~ detect ~~~1 minecraft:concrete 15 scoreboard players add @s a 100
#execute @a[scores={a=8}] ~~~ execute @e[name=con2,scores={b=1}] ~~~ detect ~~~-1 minecraft:concrete 15 scoreboard players add @s a -100
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=1}] at @s if block ~1 ~ ~1 minecraft:black_concrete run scoreboard players add @s a 100
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=1}] at @s if block ~-1 ~ ~-1 minecraft:black_concrete run scoreboard players add @s a 100
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=1}] at @s if block ~1 ~ ~-1 minecraft:black_concrete run scoreboard players add @s a 100
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=1}] at @s if block ~-1 ~ ~1 minecraft:black_concrete run scoreboard players add @s a 100
#
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @s a 50
#execute @a[scores={a=8}] ~~~ execute @e[name=con2,scores={b=1}] ~~~ detect ~1~~ minecraft:concrete 7 scoreboard players add @s a 100
#execute @a[scores={a=8}] ~~~ execute @e[name=con2,scores={b=1}] ~~~ detect ~-1~~ minecraft:concrete 7 scoreboard players add @s a 100
#execute @a[scores={a=8}] ~~~ execute @e[name=con2,scores={b=1}] ~~~ detect ~~~1 minecraft:concrete 7 scoreboard players add @s a 100
#execute @a[scores={a=8}] ~~~ execute @e[name=con2,scores={b=1}] ~~~ detect ~~~-1 minecraft:concrete 7 scoreboard players add @s a -100
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=1}] at @s if block ~1 ~ ~1 minecraft:gray_concrete run scoreboard players add @s a 50
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=1}] at @s if block ~-1 ~ ~-1 minecraft:gray_concrete run scoreboard players add @s a 50
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=1}] at @s if block ~1 ~ ~-1 minecraft:gray_concrete run scoreboard players add @s a 50
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=1}] at @s if block ~-1 ~ ~1 minecraft:gray_concrete run scoreboard players add @s a 50
##
#execute @a[scores={a=8}] ~~~ execute @e[name=con2,scores={b=2}] ~~~ detect ~~~ minecraft:concrete 15 scoreboard players add @s a 100
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=2}] at @s if block ~1 ~ ~ minecraft:black_concrete run scoreboard players add @s a 200
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=2}] at @s if block ~-1 ~ ~ minecraft:black_concrete run scoreboard players add @s a -200
#execute @a[scores={a=8}] ~~~ execute @e[name=con2,scores={b=2}] ~~~ detect ~~~1 minecraft:concrete 15 scoreboard players add @s a 100
#execute @a[scores={a=8}] ~~~ execute @e[name=con2,scores={b=2}] ~~~ detect ~~~-1 minecraft:concrete 15 scoreboard players add @s a -100
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=2}] at @s if block ~1 ~ ~1 minecraft:black_concrete run scoreboard players add @s a 100
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=2}] at @s if block ~-1 ~ ~-1 minecraft:black_concrete run scoreboard players add @s a -100
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=2}] at @s if block ~1 ~ ~-1 minecraft:black_concrete run scoreboard players add @s a 100
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=2}] at @s if block ~-1 ~ ~1 minecraft:black_concrete run scoreboard players add @s a -100
#
#execute @a[scores={a=8}] ~~~ execute @e[name=con2,scores={b=2}] ~~~ detect ~~~ minecraft:concrete 7 scoreboard players add @s a 100
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=2}] at @s if block ~1 ~ ~ minecraft:gray_concrete run scoreboard players add @s a 100
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=2}] at @s if block ~-1 ~ ~ minecraft:gray_concrete run scoreboard players add @s a -100
#execute @a[scores={a=8}] ~~~ execute @e[name=con2,scores={b=2}] ~~~ detect ~~~1 minecraft:concrete 7 scoreboard players add @s a 100
#execute @a[scores={a=8}] ~~~ execute @e[name=con2,scores={b=2}] ~~~ detect ~~~-1 minecraft:concrete 7 scoreboard players add @s a -100
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=2}] at @s if block ~1 ~ ~1 minecraft:gray_concrete run scoreboard players add @s a 50
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=2}] at @s if block ~-1 ~ ~-1 minecraft:gray_concrete run scoreboard players add @s a -50
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=2}] at @s if block ~1 ~ ~-1 minecraft:gray_concrete run scoreboard players add @s a 50
execute as @a[scores={a=8}] at @s as @e[name=con2,scores={b=2}] at @s if block ~-1 ~ ~1 minecraft:gray_concrete run scoreboard players add @s a -50
execute as @e[name=con2] at @s run scoreboard players operation @e[x=~,y=~1,z=~,r=0.5] a += @s a
execute as @e[name=con2] at @s run scoreboard players operation @s a /= "18" a
execute as @e[name=con2,scores={a=..5}] at @s run setblock ~ ~4 ~ minecraft:white_concrete
execute as @e[name=con2,scores={a=26..35}] at @s run setblock ~ ~4 ~ minecraft:black_concrete
execute as @e[name=con2,scores={a=6..25}] at @s run setblock ~ ~4 ~ minecraft:gray_concrete
execute as @e[name=con2,scores={a=36..}] at @s run setblock ~ ~4 ~ minecraft:netherite_block
execute as @e[name=con2] at @s run tp @s ~1~~ 
execute as @e[name=con2] at @s run scoreboard players add @s x 1
execute as @e[name=con2,scores={x=8}] at @s run tp @s ~-8~~1
execute as @e[name=con2,scores={x=8}] at @s run scoreboard players add @s z 1
execute as @e[name=con2,scores={x=8}] at @s run scoreboard players set @s x 0
execute as @e[name=con2,scores={z=8}] at @s run scoreboard players set @p a 9
execute as @e[name=con2,scores={z=8}] at @s run fill 0 -55 0 18 -51 8 minecraft:air
kill @e[name=con2,scores={z=8}]

#最大池化
execute as @a[scores={a=9}] at @s run summon minecraft:armor_stand pool2 0 -50 0
execute as @a[scores={a=9}] at @s run summon minecraft:armor_stand pool2_set 0 -49 0
scoreboard players set @a[scores={a=9}] a 10
execute as @e[name=pool2] at @s if block ~ ~ ~ minecraft:white_concrete as @e[name=pool2_set] at @s run setblock ~ ~ ~ minecraft:white_concrete
execute as @e[name=pool2] at @s if block ~1 ~ ~ minecraft:white_concrete as @e[name=pool2_set] at @s run setblock ~ ~ ~ minecraft:white_concrete
execute as @e[name=pool2] at @s if block ~ ~ ~1 minecraft:white_concrete as @e[name=pool2_set] at @s run setblock ~ ~ ~ minecraft:white_concrete
execute as @e[name=pool2] at @s if block ~1 ~ ~1 minecraft:white_concrete as @e[name=pool2_set] at @s run setblock ~ ~ ~ minecraft:white_concrete
execute as @e[name=pool2] at @s if block ~ ~ ~ minecraft:gray_concrete as @e[name=pool2_set] at @s run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[name=pool2] at @s if block ~1 ~ ~ minecraft:gray_concrete as @e[name=pool2_set] at @s run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[name=pool2] at @s if block ~ ~ ~1 minecraft:gray_concrete as @e[name=pool2_set] at @s run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[name=pool2] at @s if block ~1 ~ ~1 minecraft:gray_concrete as @e[name=pool2_set] at @s run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[name=pool2] at @s if block ~ ~ ~ minecraft:black_concrete as @e[name=pool2_set] at @s run setblock ~ ~ ~ minecraft:black_concrete
execute as @e[name=pool2] at @s if block ~1 ~ ~ minecraft:black_concrete as @e[name=pool2_set] at @s run setblock ~ ~ ~ minecraft:black_concrete
execute as @e[name=pool2] at @s if block ~ ~ ~1 minecraft:black_concrete as @e[name=pool2_set] at @s run setblock ~ ~ ~ minecraft:black_concrete
execute as @e[name=pool2] at @s if block ~1 ~ ~1 minecraft:black_concrete as @e[name=pool2_set] at @s run setblock ~ ~ ~ minecraft:black_concrete
execute as @e[name=pool2] at @s run fill ~1 ~ ~1 ~ ~ ~ minecraft:air
execute as @e[name=pool2] at @s run tp @s ~2~~
execute as @e[name=pool2_set] at @s run tp @s ~1~~
scoreboard players add @e[name=pool2] x 1
scoreboard players add @e[name=pool2_set] x 1
execute as @e[name=pool2,scores={x=8}] at @s run tp @s ~-16~~2
execute as @e[name=pool2_set,scores={x=8}] at @s run tp @s ~-8~~1
execute as @e[name=pool2,scores={x=8}] at @s run scoreboard players add @s z 1
execute as @e[name=pool2,scores={x=8}] at @s run scoreboard players set @s x 0
execute as @e[name=pool2_set,scores={x=8}] at @s run scoreboard players add @s z 1
execute as @e[name=pool2_set,scores={x=8}] at @s run scoreboard players set @s x 0
execute as @e[name=pool2_set,scores={z=4}] at @s run scoreboard players set @p[scores={a=10}] a 11
kill @e[name=pool2,scores={z=4}]
kill @e[name=pool2_set,scores={z=4}]

#全连接
execute as @a[scores={a=11}] at @s run summon minecraft:armor_stand "0" 0 -60 0
execute as @a[scores={a=11}] at @s run summon minecraft:armor_stand "1" 0 -60 0
execute as @a[scores={a=11}] at @s run summon minecraft:armor_stand "2" 0 -60 0
execute as @a[scores={a=11}] at @s run summon minecraft:armor_stand "3" 0 -60 0
execute as @a[scores={a=11}] at @s run summon minecraft:armor_stand "4" 0 -60 0
execute as @a[scores={a=11}] at @s run summon minecraft:armor_stand "5" 0 -60 0
execute as @a[scores={a=11}] at @s run summon minecraft:armor_stand "6" 0 -60 0
execute as @a[scores={a=11}] at @s run summon minecraft:armor_stand "7" 0 -60 0
execute as @a[scores={a=11}] at @s run summon minecraft:armor_stand "8" 0 -60 0
execute as @a[scores={a=11}] at @s run summon minecraft:armor_stand "9" 0 -60 0
execute as @a[scores={a=11}] at @s run summon minecraft:armor_stand test 0 -49 0
scoreboard players set @a[scores={a=11}] a 12
scoreboard players add @e[name=test] x 0
scoreboard players add @e[name=test] y 0
#x0 z0
execute as @e[name=test,scores={x=0,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=0,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=0,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=0,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=0,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=0,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=0,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=0,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=0,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=0,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x1 z0
execute as @e[name=test,scores={x=1,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=1,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=1,z=0}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=1,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=1,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=1,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=1,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=1,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=1,z=0}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=1,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x2 z0
execute as @e[name=test,scores={x=2,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=2,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=2,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=2,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=2,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=2,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=2,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=2,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=2,z=0}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=2,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x3 z0
execute as @e[name=test,scores={x=3,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=3,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=3,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=3,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=3,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=3,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=3,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=3,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=3,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=3,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x4 z0
execute as @e[name=test,scores={x=4,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=4,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=4,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=4,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=4,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=4,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=4,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=4,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=4,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=4,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x5 z0
execute as @e[name=test,scores={x=5,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=5,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=5,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=5,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=5,z=0}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=5,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=5,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=5,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=5,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=5,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="9"] a 1
#x6 z0
execute as @e[name=test,scores={x=6,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=6,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=6,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=6,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=6,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=6,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=6,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=6,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=6,z=0}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=6,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="9"] a 1
#x7 z0
execute as @e[name=test,scores={x=7,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=7,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=7,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=7,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=7,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=7,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=7,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=7,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=7,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=7,z=0}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="9"] a 1
#x0 z1
execute as @e[name=test,scores={x=0,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=0,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=0,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=0,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=0,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=0,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=0,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=0,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=0,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=0,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x1 z1
execute as @e[name=test,scores={x=1,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=1,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=1,z=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=1,z=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=1,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=1,z=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=1,z=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=1,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=1,z=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=1,z=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="9"] a 1
#x2 z1
execute as @e[name=test,scores={x=2,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=2,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=2,z=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=2,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=2,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=2,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=2,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=2,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=2,z=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=2,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x3 z1
execute as @e[name=test,scores={x=3,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=3,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=3,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=3,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=3,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=3,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=3,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=3,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=3,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=3,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x4 z1
execute as @e[name=test,scores={x=4,z=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=4,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=4,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=4,z=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=4,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=4,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=4,z=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=4,z=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=4,z=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=4,z=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="9"] a 1
#x5 z1
execute as @e[name=test,scores={x=5,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=5,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=5,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=5,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=5,z=1}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=5,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=5,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=5,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=5,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=5,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="9"] a 1
#x6 z1
execute as @e[name=test,scores={x=6,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=6,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=6,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=6,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=6,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=6,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=6,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=6,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=6,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=6,z=1}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x7 z1
execute as @e[name=test,scores={x=7,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=7,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=7,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=7,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=7,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=7,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=7,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=7,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=7,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=7,z=1}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="9"] a 1
#x0 z2
execute as @e[name=test,scores={x=0,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=0,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=0,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=0,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=0,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=0,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=0,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=0,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=0,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=0,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x1 z2
execute as @e[name=test,scores={x=1,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=1,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=1,z=2}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=1,z=2}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=1,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=1,z=2}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=1,z=2}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=1,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=1,z=2}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=1,z=2}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="9"] a 1
#x2 z2
execute as @e[name=test,scores={x=2,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=2,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=2,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=2,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=2,z=2}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=2,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=2,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=2,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=2,z=2}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=2,z=2}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="9"] a 1
#x3 z2
execute as @e[name=test,scores={x=3,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=3,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=3,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=3,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=3,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=3,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=3,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=3,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=3,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=3,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x4 z2
execute as @e[name=test,scores={x=4,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=4,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=4,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=4,z=2}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=4,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=4,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=4,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=4,z=2}] at @s if block ~ ~ ~ minecraft:black_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=4,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=4,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x5 z2
execute as @e[name=test,scores={x=5,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=5,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=5,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=5,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=5,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=5,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=5,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=5,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=5,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=5,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x6 z2
execute as @e[name=test,scores={x=6,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=6,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=6,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=6,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=6,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=6,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=6,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=6,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=6,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=6,z=2}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x7 z2
execute as @e[name=test,scores={x=7,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=7,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=7,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=7,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=7,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=7,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=7,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=7,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=7,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=7,z=2}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="9"] a 1
#x0 z3
execute as @e[name=test,scores={x=0,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=0,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=0,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=0,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=0,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=0,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=0,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=0,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=0,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=0,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="9"] a 1
#x1 z3
execute as @e[name=test,scores={x=1,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=1,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=1,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=1,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=1,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=1,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=1,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=1,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=1,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=1,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x2 z3
execute as @e[name=test,scores={x=2,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=2,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=2,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=2,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=2,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=2,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=2,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=2,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=2,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=2,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x3 z3
execute as @e[name=test,scores={x=3,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=3,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=3,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=3,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=3,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=3,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=3,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=3,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=3,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=3,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x4 z3
execute as @e[name=test,scores={x=4,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=4,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=4,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=4,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=4,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=4,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=4,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=4,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=4,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=4,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x5 z3
execute as @e[name=test,scores={x=5,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=5,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=5,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=5,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=5,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=5,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=5,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=5,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=5,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=5,z=3}] at @s if block ~ ~ ~ minecraft:gray_concrete run scoreboard players add @e[name="9"] a 1
#x6 z3
execute as @e[name=test,scores={x=6,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=6,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=6,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=6,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=6,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=6,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=6,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=6,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=6,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=6,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="9"] a 1
#x7 z3
execute as @e[name=test,scores={x=7,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="0"] a 1
execute as @e[name=test,scores={x=7,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="1"] a 1
execute as @e[name=test,scores={x=7,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="2"] a 1
execute as @e[name=test,scores={x=7,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="3"] a 1
execute as @e[name=test,scores={x=7,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="4"] a 1
execute as @e[name=test,scores={x=7,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="5"] a 1
execute as @e[name=test,scores={x=7,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="6"] a 1
execute as @e[name=test,scores={x=7,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="7"] a 1
execute as @e[name=test,scores={x=7,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="8"] a 1
execute as @e[name=test,scores={x=7,z=3}] at @s if block ~ ~ ~ minecraft:white_concrete run scoreboard players add @e[name="9"] a 1

execute as @e[name=test] at @s run tp @s ~1~~ 
execute as @e[name=test] at @s run scoreboard players add @s x 1
execute as @e[name=test,scores={x=8}] at @s run tp @s ~-8~~1
execute as @e[name=test,scores={x=8}] at @s run scoreboard players add @s z 1
execute as @e[name=test,scores={x=8}] at @s run scoreboard players set @s x 0
execute as @e[name=test,scores={z=4}] at @s run scoreboard players set @p a 0
execute as @e[name=test,scores={z=4}] at @s run fill 0 -49 0 7 -49 3 minecraft:air
execute as @e[name=test,scores={z=4}] at @s run scoreboard players add @e b 0
execute as @e[name=test,scores={z=4}] at @s run scoreboard players operation @e b > @e a
execute as @e[name=test,scores={z=4}] at @s as @e at @s run scoreboard players operation @s b -= @s a
execute as @e[name=test,scores={z=4}] at @s run say @e[scores={b=0}]
execute as @e[name=test,scores={z=4}] at @s run kill @e

#By Baby_2016