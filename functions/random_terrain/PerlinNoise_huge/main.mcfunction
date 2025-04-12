#柏林噪声算法
##计分板
scoreboard objectives add pn_random dummy
scoreboard objectives add pn_gra_x dummy
scoreboard objectives add pn_gra_z dummy
scoreboard objectives add pn_x dummy
scoreboard objectives add pn_z dummy
scoreboard objectives add pn_h dummy
scoreboard objectives add pn_a dummy
scoreboard players set "a1" pn_a 100000  
scoreboard players set "a2" pn_a 10000
scoreboard players set "a3" pn_a 1000
scoreboard players set "a4" pn_a 2
scoreboard players set "a5" pn_a 900
scoreboard players set "a6" pn_a 60
scoreboard players set "a7" pn_a 55
scoreboard players set "a8" pn_a -1
scoreboard players set "a9" pn_a 28
scoreboard objectives add pn_set dummy
scoreboard objectives add fade dummy
scoreboard players add "w" pn_set 0
scoreboard players add "h" pn_set 0

##生成晶格
execute as @e[name=pn_set,tag=!pn_set1] at @s run scoreboard players operation @s pn_x = "w" pn_set 
execute as @e[name=pn_set,tag=!pn_set1] at @s run scoreboard players remove @s pn_x 1 
execute as @e[name=pn_set,tag=!pn_set1] at @s run scoreboard players operation @s pn_gra_x = @s pn_x
execute as @e[name=pn_set,tag=!pn_set1] at @s run scoreboard players operation @s pn_z = "h" pn_set 
execute as @e[name=pn_set,tag=!pn_set1] at @s run scoreboard players remove @s pn_z 1 
execute as @e[name=pn_set,tag=!pn_set1] at @s run scoreboard players set @s pn_a 0
execute as @e[name=pn_set,tag=!pn_set1] at @s run tag @s add pn_set3
execute as @e[name=pn_set,tag=!pn_set1] at @s run tag @s add pn_set1
#
execute as @e[name=pn_set,tag=pn_set2,scores={pn_gra_x=0}] at @s run tag @s add pn_set4
execute as @e[name=pn_set,tag=pn_set2,tag=pn_set4,scores={pn_gra_x=0}] at @s run tp @s ~~~32
execute as @e[name=pn_set,tag=pn_set2,tag=pn_set4,scores={pn_gra_x=0}] at @s run scoreboard players add @s pn_a 1
execute as @e[name=pn_set,tag=pn_set2,tag=pn_set4,scores={pn_gra_x=0}] at @s run scoreboard players remove @s pn_z 1
execute as @e[name=pn_set,tag=pn_set2,tag=pn_set4,scores={pn_gra_x=0,pn_a=2..}] at @s run scoreboard players set @s pn_a 0
execute as @e[name=pn_set,tag=pn_set2,scores={pn_gra_x=1..,pn_a=0}] at @s run tp @s ~32~~
execute as @e[name=pn_set,tag=pn_set2,scores={pn_gra_x=1..,pn_a=1}] at @s run tp @s ~-32~~
execute as @e[name=pn_set,tag=pn_set2,scores={pn_gra_x=1..}] at @s run scoreboard players remove @s pn_gra_x 1
execute as @e[name=pn_set,tag=pn_set2,tag=pn_set4,scores={pn_gra_x=0}] at @s run scoreboard players operation @s pn_gra_x = @s pn_x
execute as @e[name=pn_set,tag=pn_set2] at @s run tag @s remove pn_set4
execute as @e[name=pn_set,tag=pn_set2] at @s run tag @s remove pn_set2
#
execute as @e[name=pn_set,tag=pn_set3] at @s run summon minecraft:armor_stand pn_p ~ ~ ~
execute as @e[name=pn_set,tag=pn_set3] at @s run summon minecraft:armor_stand pn_p ~31 ~ ~
execute as @e[name=pn_set,tag=pn_set3] at @s run summon minecraft:armor_stand pn_p ~ ~ ~31
execute as @e[name=pn_set,tag=pn_set3] at @s run summon minecraft:armor_stand pn_p ~31 ~ ~31
execute as @e[name=pn_set,tag=pn_set3] at @s run tag @s remove pn_set3

##选取晶格
execute as @e[tag=pn_p,tag=pn_ran] at @s run scoreboard players operation @e[r=2.5,name=pn_p,tag=!pn_ran] pn_gra_x = @s pn_gra_x
execute as @e[tag=pn_p,tag=pn_ran] at @s run scoreboard players operation @e[r=2.5,name=pn_p,tag=!pn_ran] pn_gra_z = @s pn_gra_z
execute as @e[tag=pn_p,tag=pn_ran] at @s run tag @e[r=2,name=pn_p,tag=!pn_ran] add pn_ran
tag @e[type=minecraft:armor_stand,name=pn_p] add pn_p
execute as @e[name=pn_set] at @s run tag @e[r=0.5,type=minecraft:armor_stand,name=pn_p] add pn_p1
execute as @e[tag=pn_p1] at @s positioned ~31 ~ ~ run tag @e[c=1,r=0.5,type=minecraft:armor_stand,name=pn_p] add pn_p2
execute as @e[tag=pn_p1] at @s positioned ~31 ~ ~31 run tag @e[c=1,r=0.5,type=minecraft:armor_stand,name=pn_p] add pn_p3
execute as @e[tag=pn_p1] at @s positioned ~ ~ ~31 run tag @e[c=1,r=0.5,type=minecraft:armor_stand,name=pn_p] add pn_p4

##梯度向量
scoreboard players random @e[tag=pn_p,tag=!pn_ran] pn_random 0 32
execute as @e[tag=pn_p,tag=!pn_ran] run scoreboard players operation @s pn_gra_x = @s pn_random
execute as @e[tag=pn_p,tag=!pn_ran] run scoreboard players operation @s pn_random *= @s pn_random
execute as @e[tag=pn_p,tag=!pn_ran] run scoreboard players set @s pn_gra_z 1024
execute as @e[tag=pn_p,tag=!pn_ran] run scoreboard players operation @s pn_gra_z -= @s pn_random
execute as @e[tag=pn_p,tag=!pn_ran] run scoreboard players operation @s math_sqrt = @s pn_gra_z
execute as @e[tag=pn_p,tag=!pn_ran] run function math/sqrt
execute as @e[tag=pn_p,tag=!pn_ran] run scoreboard players operation @s pn_gra_z = @s math_sqrt
scoreboard players random @e[tag=pn_p,tag=!pn_ran] pn_random 0 2
execute as @e[tag=pn_p,tag=!pn_ran,scores={pn_random=0}] run scoreboard players operation @s pn_gra_x *= "-1" NUM
execute as @e[tag=pn_p,tag=!pn_ran,scores={pn_random=1}] run scoreboard players operation @s pn_gra_z *= "-1" NUM
execute as @e[tag=pn_p,tag=!pn_ran,scores={pn_random=2}] run scoreboard players operation @s pn_gra_x *= "-1" NUM
execute as @e[tag=pn_p,tag=!pn_ran,scores={pn_random=2}] run scoreboard players operation @s pn_gra_z *= "-1" NUM
tag @e[tag=pn_p,tag=!pn_ran] add pn_ran

##晶格内实体
execute as @e[tag=pn_p1,tag=!pn_pm] at @s run summon minecraft:armor_stand pn_pmx
tag @e[tag=pn_p1,tag=!pn_pm] add pn_pm
scoreboard players add @e[name=pn_pmx] pn_x 0
scoreboard players add @e[name=pn_pmz] pn_x 0
scoreboard players add @e[name=pn_pmz] pn_z 0
#
execute as @e[name=pn_pmx] at @s run summon minecraft:armor_stand pn_pmz
execute as @e[name=pn_pmx] at @s run scoreboard players add @s pn_x 0 
execute as @e[name=pn_pmx] at @s run scoreboard players operation @e[r=0.5,name=pn_pmz] pn_x = @s pn_x
execute as @e[name=pn_pmx] at @s run tp @s ~1~~
execute as @e[name=pn_pmx] at @s run scoreboard players add @s pn_x 10
kill @e[name=pn_pmx,scores={pn_x=320..}]
#
execute as @e[name=pn_pmz] at @s run summon minecraft:armor_stand pn_pm
execute as @e[name=pn_pmz] at @s run scoreboard players add @s pn_z 0
execute as @e[name=pn_pmz] at @s run scoreboard players operation @e[r=0.5,name=pn_pm] pn_x = @s pn_x
execute as @e[name=pn_pmz] at @s run scoreboard players operation @e[r=0.5,name=pn_pm] pn_z = @s pn_z
execute as @e[name=pn_pmz] at @s run tp @s ~~~1
execute as @e[name=pn_pmz] at @s run scoreboard players add @s pn_z 10
kill @e[name=pn_pmz,scores={pn_z=320..}]

##点积计算
function random_terrain/PerlinNoise_huge/value
function random_terrain/PerlinNoise_huge/value
function random_terrain/PerlinNoise_huge/value
function random_terrain/PerlinNoise_huge/value
function random_terrain/PerlinNoise_huge/value
function random_terrain/PerlinNoise_huge/value
function random_terrain/PerlinNoise_huge/value
function random_terrain/PerlinNoise_huge/value
function random_terrain/PerlinNoise_huge/value
function random_terrain/PerlinNoise_huge/value

##地形填充
execute as @e[name=pn_pm,tag=pn_h,scores={pn_h=4..}] at @s run setblock ~ ~ ~ minecraft:stone
execute as @e[name=pn_pm,tag=pn_h,scores={pn_h=2..3}] at @s run setblock ~ ~ ~ minecraft:dirt
execute as @e[name=pn_pm,tag=pn_h,scores={pn_h=1}] at @s run setblock ~ ~ ~ minecraft:grass
execute as @e[name=pn_pm,tag=pn_h,scores={pn_h=1..}] at @s run tp @s ~~1~
execute as @e[name=pn_pm,tag=pn_h,scores={pn_h=1}] at @s run scoreboard players random @s pn_random 1 3
execute as @e[name=pn_pm,tag=pn_h,scores={pn_h=1,pn_random=1}] at @s if block ~ ~ ~ minecraft:air[] run setblock ~ ~ ~ minecraft:tallgrass
execute as @e[name=pn_pm,tag=pn_h,scores={pn_h=1..}] at @s run scoreboard players remove @s pn_h 1
execute as @e[name=pn_pm,tag=pn_h,scores={pn_h=..0}] at @s run kill @s

effect @e[name=pn_pm] invisibility 1 1 true
#By Baby_2016