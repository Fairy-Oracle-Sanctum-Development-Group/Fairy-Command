#迷宫生成算法
##计分板
scoreboard objectives add la_x dummy
scoreboard objectives add la_z dummy
scoreboard objectives add la_w dummy
scoreboard objectives add la_set dummy
scoreboard players add "x" la_set 0
scoreboard players add "z" la_set 0
scoreboard players add "mode" la_set 0
#Prim-0 DFS-1 十字分割-2

#偶数变奇数
execute as @e[name=la_set,tag=!la_set] at @s run scoreboard players operation @s la_w = "x" la_set
execute as @e[name=la_set,tag=!la_set] at @s run scoreboard players operation @s la_w %= "2" NUM
execute as @e[name=la_set,tag=!la_set,scores={la_w=0}] at @s run scoreboard players add "x" la_set 1
execute as @e[name=la_set,tag=!la_set] at @s run scoreboard players operation @s la_w = "z" la_set
execute as @e[name=la_set,tag=!la_set] at @s run scoreboard players operation @s la_w %= "2" NUM
execute as @e[name=la_set,tag=!la_set,scores={la_w=0}] at @s run scoreboard players add "z" la_set 1

##初始化
execute as @e[name=la_set,tag=!la_set] at @s run scoreboard players add @s la_w 0
execute as @e[name=la_set,tag=!la_set] at @s run scoreboard players operation @s la_set = "mode" la_set
execute as @e[name=la_set,tag=!la_set] at @s run scoreboard players operation @s la_x = "x" la_set
execute as @e[name=la_set,tag=!la_set] at @s run scoreboard players operation @s la_z = "z" la_set
execute as @e[name=la_set,tag=!la_set] at @s run summon minecraft:armor_stand la_sta ~1 ~1 ~1
execute as @e[name=la_set,tag=!la_set,scores={la_set=0}] at @s run summon minecraft:armor_stand la_prim ~1 ~1 ~1
execute as @e[name=la_set,tag=!la_set,scores={la_set=1}] at @s run summon minecraft:armor_stand la_dfs ~1 ~1 ~1
execute as @e[name=la_set,tag=!la_set,scores={la_set=2}] at @s run summon minecraft:armor_stand la_cross ~ ~4 ~
execute as @e[name=la_set,tag=!la_set] at @s run tag @s add la_set
#
execute as @e[name=la_set,scores={la_x=1..}] at @s run fill ~ ~ ~ ~ ~3 ~ minecraft:white_concrete
execute as @e[name=la_set,scores={la_x=1..}] at @s run summon minecraft:armor_stand la_z ~ ~ ~
execute as @e[name=la_set,scores={la_x=1..}] at @s run tp @s ~1~~
scoreboard players add @e[name=la_z] la_z 0
execute as @e[name=la_set,scores={la_x=1..}] at @s run scoreboard players operation @s la_z =  "z" la_set
execute as @e[name=la_set,scores={la_x=1..}] at @s run scoreboard players operation @e[name=la_z,scores={la_z=0}] la_z = @s la_z
execute as @e[name=la_set,scores={la_x=1..}] at @s run scoreboard players remove @s la_x 1
#
execute as @e[name=la_z,scores={la_z=1..}] at @s run fill ~ ~ ~ ~ ~3 ~ minecraft:white_concrete
execute as @e[name=la_z,scores={la_z=1..}] at @s run tp @s ~~~1
execute as @e[name=la_z,scores={la_z=1..}] at @s run scoreboard players remove @s la_z 1
execute as @e[name=la_set,scores={la_z=1..}] at @s run scoreboard players remove @s la_z 1
execute as @e[name=la_set] at @s run tag @e[name=la_z] remove la_last
execute as @e[name=la_set] at @s run tag @e[name=la_z,c=1] add la_last
execute as @e[name=la_set,scores={la_z=..0}] at @s as @e[tag=la_last] at @s run fill ~-1 ~1 ~-1 ~-1 ~3 ~-1 minecraft:air
execute as @e[name=la_set,scores={la_z=..0}] at @s as @e[tag=la_last] at @s run fill ~-1 ~ ~-1 ~-1 ~ ~-1 minecraft:gold_block
execute as @e[name=la_set,scores={la_z=..0}] at @s as @e[name=la_sta] at @s run fill ~-1 ~ ~ ~-1 ~2 ~ minecraft:air
execute as @e[name=la_set,scores={la_z=..0}] at @s as @e[name=la_sta] at @s run fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:diamond_block
execute as @e[name=la_set,scores={la_z=..0}] at @s run kill @e[name=la_sta]
execute as @e[name=la_set,scores={la_z=..0}] at @s run tag @e[name=la_prim] add la_prim
execute as @e[name=la_set,scores={la_z=..0}] at @s run tag @e[name=la_dfs] add la_dfs
execute as @e[name=la_set,scores={la_z=..0}] at @s run kill @e[name=la_z,scores={la_z=..0}]
kill @e[name=la_set,scores={la_z=..0}]
#
execute as @e[name=la_set,scores={la_x=2..,la_set=2}] at @s run summon minecraft:armor_stand la_y ~ ~ ~1
execute as @e[name=la_y] at @s if block ~ ~ ~ minecraft:white_concrete as @s at @s if block ~-1 ~ ~ minecraft:air[] run kill @s
execute as @e[name=la_y] at @s if block ~ ~ ~ minecraft:white_concrete as @s at @s run fill ~ ~1 ~ ~ ~3 ~ minecraft:air
execute as @e[name=la_y] at @s if block ~ ~ ~ minecraft:white_concrete as @s at @s run fill ~ ~ ~ ~ ~ ~ minecraft:iron_block
execute as @e[name=la_y] at @s if block ~ ~ ~ minecraft:iron_block[] as @s at @s run tp @s ~~~1
execute as @e[name=la_y] at @s if block ~ ~ ~-1 minecraft:gold_block[] as @e[name=la_y,rm=0.01] at @s run fill ~ ~ ~-1 ~ ~3 ~-1 minecraft:white_concrete
execute as @e[name=la_y] at @s if block ~ ~ ~-1 minecraft:gold_block[] as @e[name=la_cross] at @s run summon minecraft:armor_stand la_cross1
execute as @e[name=la_y] at @s if block ~ ~ ~-1 minecraft:gold_block[] run tag @e[name=la_cross] add la_cross 
execute as @e[name=la_y] at @s if block ~ ~ ~-1 minecraft:gold_block[] as @e[name=la_y] at @s run kill @s

##prim
scoreboard players random @e[name=la_prim,tag=la_prim] la_w 1 4
scoreboard players add @e[name=la_prim,tag=la_prim] la_x 1
#
execute as @e[name=la_prim,tag=la_prim,scores={la_w=1}] at @s if block ~2 ~-1 ~ minecraft:white_concrete run fill ~ ~ ~ ~2 ~2 ~ minecraft:air
execute as @e[name=la_prim,tag=la_prim,scores={la_w=1}] at @s if block ~2 ~-1 ~ minecraft:white_concrete run summon minecraft:armor_stand la_prim ~2 ~ ~
execute as @e[name=la_prim,tag=la_prim,scores={la_w=1}] at @s if block ~2 ~-1 ~ minecraft:white_concrete run fill ~ ~-1 ~ ~2 ~-1 ~ minecraft:iron_block
#
execute as @e[name=la_prim,tag=la_prim,scores={la_w=2}] at @s if block ~-2 ~-1 ~ minecraft:white_concrete run fill ~ ~ ~ ~-2 ~2 ~ minecraft:air
execute as @e[name=la_prim,tag=la_prim,scores={la_w=2}] at @s if block ~-2 ~-1 ~ minecraft:white_concrete run summon minecraft:armor_stand la_prim ~-2 ~ ~
execute as @e[name=la_prim,tag=la_prim,scores={la_w=2}] at @s if block ~-2 ~-1 ~ minecraft:white_concrete run fill ~ ~-1 ~ ~-2 ~-1 ~ minecraft:iron_block
#
execute as @e[name=la_prim,tag=la_prim,scores={la_w=3}] at @s if block ~ ~-1 ~2 minecraft:white_concrete run fill ~ ~ ~ ~ ~2 ~2 minecraft:air
execute as @e[name=la_prim,tag=la_prim,scores={la_w=3}] at @s if block ~ ~-1 ~2 minecraft:white_concrete run summon minecraft:armor_stand la_prim ~ ~ ~2
execute as @e[name=la_prim,tag=la_prim,scores={la_w=3}] at @s if block ~ ~-1 ~2 minecraft:white_concrete run fill ~ ~-1 ~ ~ ~-1 ~2 minecraft:iron_block
#
execute as @e[name=la_prim,tag=la_prim,scores={la_w=4}] at @s if block ~ ~-1 ~-2 minecraft:white_concrete run fill ~ ~ ~ ~ ~2 ~-2 minecraft:air
execute as @e[name=la_prim,tag=la_prim,scores={la_w=4}] at @s if block ~ ~-1 ~-2 minecraft:white_concrete run summon minecraft:armor_stand la_prim ~ ~ ~-2
execute as @e[name=la_prim,tag=la_prim,scores={la_w=4}] at @s if block ~ ~-1 ~-2 minecraft:white_concrete run fill ~ ~-1 ~ ~ ~-1 ~-2 minecraft:iron_block
kill @e[name=la_prim,tag=la_prim,scores={la_x=20..}]
execute as @e[name=la_prim,tag=la_prim] at @s run tag @e[name=la_prim] add la_prim

##DFS
scoreboard players random @e[name=la_dfs,tag=la_dfs] la_w 1 4
#
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=1}] at @s if block ~2 ~-1 ~ minecraft:white_concrete run fill ~ ~ ~ ~2 ~2 ~ minecraft:air
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=1}] at @s if block ~2 ~-1 ~ minecraft:white_concrete run setblock ~2 ~3 ~ minecraft:orange_concrete
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=1}] at @s if block ~2 ~-1 ~ minecraft:white_concrete run tag @s add la_dfs_true
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=1}] at @s if block ~2 ~-1 ~ minecraft:white_concrete run fill ~ ~-1 ~ ~2 ~-1 ~ minecraft:iron_block
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=1}] at @s run tp @s[tag=la_dfs_true] ~2~~
#
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=2}] at @s if block ~-2 ~-1 ~ minecraft:white_concrete run fill ~ ~ ~ ~-2 ~2 ~ minecraft:air
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=2}] at @s if block ~-2 ~-1 ~ minecraft:white_concrete run setblock ~-2 ~3 ~ minecraft:magenta_concrete
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=2}] at @s if block ~-2 ~-1 ~ minecraft:white_concrete run tag @s add la_dfs_true
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=2}] at @s if block ~-2 ~-1 ~ minecraft:white_concrete run fill ~ ~-1 ~ ~-2 ~-1 ~ minecraft:iron_block
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=2}] at @s run tp @s[tag=la_dfs_true] ~-2~~
#
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=3}] at @s if block ~ ~-1 ~2 minecraft:white_concrete run fill ~ ~ ~ ~ ~2 ~2 minecraft:air
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=3}] at @s if block ~ ~-1 ~2 minecraft:white_concrete run setblock ~ ~3 ~2 minecraft:light_blue_concrete
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=3}] at @s if block ~ ~-1 ~2 minecraft:white_concrete run tag @s add la_dfs_true
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=3}] at @s if block ~ ~-1 ~2 minecraft:white_concrete run fill ~ ~-1 ~ ~ ~-1 ~2 minecraft:iron_block
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=3}] at @s run tp @s[tag=la_dfs_true] ~~~2
#
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=4}] at @s if block ~ ~-1 ~-2 minecraft:white_concrete run fill ~ ~ ~ ~ ~2 ~-2 minecraft:air
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=4}] at @s if block ~ ~-1 ~-2 minecraft:white_concrete run setblock ~ ~3 ~-2 minecraft:yellow_concrete
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=4}] at @s if block ~ ~-1 ~-2 minecraft:white_concrete run tag @s add la_dfs_true
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=4}] at @s if block ~ ~-1 ~-2 minecraft:white_concrete run fill ~ ~-1 ~ ~ ~-1 ~-2 minecraft:iron_block
execute as @e[name=la_dfs,tag=la_dfs,scores={la_w=4}] at @s run tp @s[tag=la_dfs_true] ~~~-2
#
scoreboard players set @e[name=la_dfs,tag=la_dfs] la_w 0
scoreboard players add @e[name=la_dfs,tag=la_dfs] la_x 1
scoreboard players add @e[name=la_dfs_clear,tag=la_dfs_clear] la_x 1
execute as @e[name=la_dfs,tag=la_dfs] at @s if block ~2 ~ ~ minecraft:air[] run scoreboard players add @s la_w 1
execute as @e[name=la_dfs,tag=la_dfs] at @s if block ~-2 ~ ~ minecraft:air[] run scoreboard players add @s la_w 1
execute as @e[name=la_dfs,tag=la_dfs] at @s if block ~ ~ ~2 minecraft:air[] run scoreboard players add @s la_w 1
execute as @e[name=la_dfs,tag=la_dfs] at @s if block ~ ~ ~-2 minecraft:air[] run scoreboard players add @s la_w 1
tag @e[name=la_dfs,tag=la_dfs,scores={la_w=4}] add la_dfs_back
execute as @e[name=la_dfs,tag=la_dfs,tag=la_dfs_back] at @s if block ~ ~3 ~ minecraft:orange_concrete run tp @s ~-2~~
execute as @e[name=la_dfs,tag=la_dfs,tag=la_dfs_back] at @s if block ~ ~3 ~ minecraft:magenta_concrete run tp @s ~2~~
execute as @e[name=la_dfs,tag=la_dfs,tag=la_dfs_back] at @s if block ~ ~3 ~ minecraft:light_blue_concrete run tp @s ~~~-2
execute as @e[name=la_dfs,tag=la_dfs,tag=la_dfs_back] at @s if block ~ ~3 ~ minecraft:yellow_concrete run tp @s ~~~2
execute as @e[name=la_dfs,tag=la_dfs,tag=la_dfs_true] at @s run scoreboard players set @s la_x 0
execute as @e[name=la_dfs,tag=la_dfs,scores={la_x=40..}] at @s if block ~-1 ~-1 ~ minecraft:diamond_block[] run summon minecraft:armor_stand la_dfs_clear ~ ~3 ~
execute as @e[name=la_dfs,tag=la_dfs,scores={la_x=40..}] at @s if block ~-1 ~-1 ~ minecraft:diamond_block[] run setblock ~ ~3 ~ minecraft:white_concrete
execute as @e[name=la_dfs,tag=la_dfs,scores={la_x=40..}] at @s if block ~-1 ~-1 ~ minecraft:diamond_block[] run kill @s
tag @e[name=la_dfs,tag=la_dfs] remove la_dfs_true
tag @e[name=la_dfs,tag=la_dfs] remove la_dfs_back
execute as @e[name=la_dfs_clear] at @s if block ~ ~ ~ minecraft:white_concrete run summon minecraft:armor_stand la_dfs_clear1 ~ ~ ~
execute as @e[name=la_dfs_clear] at @s if block ~ ~ ~ minecraft:white_concrete run tp @s ~2~~
execute as @e[name=la_dfs_clear] at @s if block ~ ~ ~ minecraft:air[] run kill @s
execute as @e[name=la_dfs_clear1] at @s if block ~ ~ ~ minecraft:white_concrete run summon minecraft:armor_stand la_dfs_clear2 ~ ~ ~
execute as @e[name=la_dfs_clear1] at @s if block ~ ~ ~ minecraft:white_concrete run tp @s ~~~2
execute as @e[name=la_dfs_clear2] at @s if block ~ ~ ~ minecraft:white_concrete run setblock ~ ~ ~ minecraft:air
execute as @e[name=la_dfs_clear1] at @s if block ~ ~ ~ minecraft:air[] run kill @s
execute as @e[name=la_dfs_clear2] at @s if block ~ ~ ~ minecraft:air[] run kill @s


##递归分割
scoreboard players set @e[name=la_cross] la_w 0
execute as @e[name=la_cross2] at @s run scoreboard players add @e[name=la_cross] la_w 1
execute as @e[name=la_cross3] at @s run scoreboard players add @e[name=la_cross] la_w 1
execute as @e[name=la_cross4] at @s run scoreboard players add @e[name=la_cross] la_w 1
execute as @e[name=la_cross5] at @s run scoreboard players add @e[name=la_cross] la_w 1
execute as @e[name=la_cross6] at @s run scoreboard players add @e[name=la_cross] la_w 1
execute as @e[name=la_cross,scores={la_w=0}] at @s as @e[name=la_cross1,tag=la_cross1] at @s if block ~2 ~-1 ~2 minecraft:air[] run tag @s remove la_cross1
execute as @e[name=la_cross,scores={la_w=0}] at @s as @e[name=la_cross1,tag=!la_cross1,c=1] at @s run summon minecraft:armor_stand la_cross2 ~ ~ ~
execute as @e[name=la_cross,scores={la_w=0}] at @s run tag @e[name=la_cross1,tag=!la_cross1,c=1] add la_cross1
scoreboard players add @e[name=la_cross] la_x 1
execute as @e[name=la_cross1] at @s run scoreboard players set @e[name=la_cross] la_x 0
kill @e[name=la_cross,scores={la_x=20},tag=la_cross]
execute as @e[name=la_cross2] at @s run tp @s ~2~~
execute as @e[name=la_cross2] at @s if block ~ ~-1 ~2 minecraft:white_concrete as @r[type=armor_stand,name=la_crossx] at @s run summon minecraft:armor_stand la_cross3
execute as @e[name=la_cross2] at @s if block ~ ~-1 ~2 minecraft:white_concrete run kill @e[name=la_crossx]
execute as @e[name=la_cross2] at @s if block ~ ~-1 ~2 minecraft:white_concrete run kill @s
execute as @e[name=la_cross2] at @s run summon minecraft:armor_stand la_crossx ~ ~ ~
execute as @e[name=la_cross3] at @s run tp @s ~~~2
execute as @e[name=la_cross3] at @s if block ~ ~-1 ~ minecraft:white_concrete as @r[type=armor_stand,name=la_crossy] at @s run summon minecraft:armor_stand la_cross4
execute as @e[name=la_cross3] at @s if block ~ ~-1 ~ minecraft:white_concrete run kill @e[name=la_crossy]
execute as @e[name=la_cross3] at @s if block ~ ~-1 ~ minecraft:white_concrete run kill @s
execute as @e[name=la_cross3] at @s run summon minecraft:armor_stand la_crossy ~ ~ ~
execute as @e[name=la_cross4,tag=!la_cross4] at @s run summon minecraft:armor_stand la_cross5 ~1 ~ ~
execute as @e[name=la_cross4,tag=!la_cross4] at @s run summon minecraft:armor_stand la_cross5 ~-1 ~ ~
execute as @e[name=la_cross4,tag=!la_cross4] at @s run summon minecraft:armor_stand la_cross5 ~ ~ ~1
execute as @e[name=la_cross4,tag=!la_cross4] at @s run summon minecraft:armor_stand la_cross5 ~ ~ ~-1
execute as @e[name=la_cross4,tag=!la_cross4] at @s run tag @r[type=armor_stand,name=la_cross5,c=3] add la_cross5
execute as @e[name=la_cross5] at @s run tp @s ~~~ facing @e[name=la_cross4,c=1,tag=!la_cross4]
tag @e[name=la_cross4,tag=!la_cross4] add la_cross4
execute as @e[name=la_cross5] at @s run tp @s ^^^1
execute as @e[name=la_cross5] at @s if block ~ ~-1 ~ minecraft:white_concrete run summon minecraft:armor_stand la_cross1 ~ ~ ~
execute as @e[name=la_cross5,tag=la_cross5] at @s if block ~ ~-1 ~ minecraft:white_concrete as @e[name=la_cross6,c=1] at @s run fill ~ ~-3 ~ ~ ~-1 ~ minecraft:air
execute as @e[name=la_cross5] at @s if block ~ ~-1 ~ minecraft:white_concrete run kill @s
execute as @e[name=la_cross5] at @s run tp @s ^^^1
execute as @e[name=la_cross5] at @s run fill ^ ^-3 ^-1 ^ ^-1 ^ minecraft:white_concrete
execute as @e[name=la_cross5] at @s run summon minecraft:armor_stand la_cross6
execute as @e[name=la_cross5,tag=la_cross5] at @s run scoreboard players random @s la_w 1 2
execute as @e[name=la_cross5,tag=la_cross5,scores={la_w=1}] at @s as @e[name=la_cross6,c=1] at @s run fill ~ ~-3 ~ ~ ~-1 ~ minecraft:air
tag @e[name=la_cross5,tag=la_cross5,scores={la_w=1}] remove la_cross5
scoreboard players set @e[name=la_cross4] la_w 0
execute as @e[name=la_cross5] at @s run scoreboard players add @e[name=la_cross4] la_w 1
execute as @e[name=la_cross4,scores={la_w=0}] at @s run kill @e[name=la_cross6]
execute as @e[name=la_cross4,scores={la_w=0}] at @s run summon minecraft:armor_stand la_cross1
execute as @e[name=la_cross4,scores={la_w=0}] at @s run kill @s
execute as @e[name=la_cross1] at @s if block ~2 ~-1 ~2 minecraft:white_concrete run kill @s
execute as @e[name=la_cross1] at @s if block ~1 ~-4 ~ minecraft:air run kill @s
execute as @e[name=la_cross1] at @s if block ~ ~-4 ~1 minecraft:air run kill @s

execute as @e[type=minecraft:armor_stand] at @s run tp @s ~~~

#By Baby_2016