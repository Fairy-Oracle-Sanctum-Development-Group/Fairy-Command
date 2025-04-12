#Astar寻路算法
##计分板
scoreboard objectives add as_fc dummy
scoreboard objectives add as_gc dummy
scoreboard objectives add as_cost dummy
scoreboard players set "a1" as_cost -1
scoreboard players add "mode" as_cost 0
scoreboard objectives add as_x dummy
scoreboard objectives add as_y dummy
scoreboard objectives add as_z dummy
#4向-0 8向-1 6向-2 26向-3

##初始化
execute as @e[type=armor_stand,name=as_a] at @s run tp @s ~~~
execute as @e[type=armor_stand,name=as_b] at @s run tp @s ~~~
execute as @e[type=armor_stand,name=as_p] at @s run tp @s ~~~
execute as @e[type=armor_stand,name=as_b,tag=!as_p] at @s as @e[type=armor_stand,name=as_a,tag=!as_p] at @s run function position/pos_get
execute as @e[type=armor_stand,name=as_a,tag=!as_p] at @s as @e[type=armor_stand,name=as_b,tag=!as_p] at @s run function position/pos_get
execute as @e[type=armor_stand,name=as_b,tag=!as_p] at @s as @e[type=armor_stand,name=as_a,tag=!as_p] at @s run summon minecraft:armor_stand as_p ~ ~ ~
execute as @e[type=armor_stand,name=as_b,tag=!as_p] at @s as @e[type=armor_stand,name=as_a,tag=!as_p] at @s run tag @e[name=as_p,r=0.5] add as_p2
execute as @e[type=armor_stand,name=as_b,tag=!as_p] at @s as @e[type=armor_stand,name=as_a,tag=!as_p] at @s run tag @e[name=as_p,r=0.5] add as_p4
execute as @e[type=armor_stand,name=as_b,tag=!as_p] at @s as @e[type=armor_stand,name=as_a,tag=!as_p] at @s run tag @e[name=as_p,r=0.5] add as_p6
execute as @e[type=armor_stand,name=as_b,tag=!as_p] at @s as @e[type=armor_stand,name=as_a,tag=!as_p] at @s run tag @s add as_p1
execute as @e[type=armor_stand,name=as_b,tag=!as_p] at @s as @e[type=armor_stand,name=as_a,tag=!as_p] at @s run scoreboard players set @s as_fc 0
execute as @e[type=armor_stand,name=as_a,tag=as_p1] at @s run tag @e[type=armor_stand,name=as_b,tag=!as_p] add as_p
execute as @e[type=armor_stand,name=as_a,tag=as_p1] at @s run tag @s add as_p
execute as @e[type=armor_stand,name=as_a,tag=as_p1] at @s run scoreboard players operation @s as_cost = "mode" as_cost
execute as @e[name=as_p,tag=as_p3] at @s run tag @e remove as_p1

##实体生成
execute as @e[tag=as_p1] at @s if block ~1 ~ ~ minecraft:air[] run summon minecraft:armor_stand as_p ~1 ~ ~
execute as @e[tag=as_p1] at @s if block ~-1 ~ ~ minecraft:air[] run summon minecraft:armor_stand as_p ~-1 ~ ~
execute as @e[tag=as_p1] at @s if block ~ ~ ~1 minecraft:air[] run summon minecraft:armor_stand as_p ~ ~ ~1
execute as @e[tag=as_p1] at @s if block ~ ~ ~-1 minecraft:air[] run summon minecraft:armor_stand as_p ~ ~ ~-1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=2..3}] at @s as @e[tag=as_p1] at @s if block ~ ~1 ~ minecraft:air[] run summon minecraft:armor_stand as_p ~ ~1 ~
execute as @e[type=armor_stand,name=as_a,scores={as_cost=2..3}] at @s as @e[tag=as_p1] at @s if block ~ ~-1 ~ minecraft:air[] run summon minecraft:armor_stand as_p ~ ~-1 ~
#
execute as @e[type=armor_stand,name=as_a,scores={as_cost=1}] at @s as @e[tag=as_p1] at @s if block ~1 ~ ~1 minecraft:air[] run summon minecraft:armor_stand as_p ~1 ~ ~1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=1}] at @s as @e[tag=as_p1] at @s if block ~1 ~ ~-1 minecraft:air[] run summon minecraft:armor_stand as_p ~1 ~ ~-1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=1}] at @s as @e[tag=as_p1] at @s if block ~-1 ~ ~1 minecraft:air[] run summon minecraft:armor_stand as_p ~-1 ~ ~1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=1}] at @s as @e[tag=as_p1] at @s if block ~-1 ~ ~-1 minecraft:air[] run summon minecraft:armor_stand as_p ~-1 ~ ~-1
#
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~1 ~ ~1 minecraft:air[] run summon minecraft:armor_stand as_p ~1 ~ ~1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~-1 ~ ~-1 minecraft:air[] run summon minecraft:armor_stand as_p ~-1 ~ ~-1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~-1 ~ ~1 minecraft:air[] run summon minecraft:armor_stand as_p ~-1 ~ ~1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~1 ~ ~-1 minecraft:air[] run summon minecraft:armor_stand as_p ~1 ~ ~-1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~1 ~1 ~1 minecraft:air[] run summon minecraft:armor_stand as_p ~1 ~1 ~1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~-1 ~1 ~-1 minecraft:air[] run summon minecraft:armor_stand as_p ~-1 ~1 ~-1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~-1 ~1 ~1 minecraft:air[] run summon minecraft:armor_stand as_p ~-1 ~1 ~1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~1 ~1 ~-1 minecraft:air[] run summon minecraft:armor_stand as_p ~1 ~1 ~-1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~1 ~-1 ~1 minecraft:air[] run summon minecraft:armor_stand as_p ~1 ~-1 ~1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~-1 ~-1 ~-1 minecraft:air[] run summon minecraft:armor_stand as_p ~-1 ~-1 ~-1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~-1 ~-1 ~1 minecraft:air[] run summon minecraft:armor_stand as_p ~-1 ~-1 ~1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~1 ~-1 ~-1 minecraft:air[] run summon minecraft:armor_stand as_p ~1 ~-1 ~-1
#
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~1 ~1 ~ minecraft:air[] run summon minecraft:armor_stand as_p ~1 ~1 ~
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~-1 ~1 ~ minecraft:air[] run summon minecraft:armor_stand as_p ~-1 ~1 ~
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~ ~1 ~1 minecraft:air[] run summon minecraft:armor_stand as_p ~ ~1 ~1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~ ~1 ~-1 minecraft:air[] run summon minecraft:armor_stand as_p ~ ~1 ~-1
#
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~1 ~-1 ~ minecraft:air[] run summon minecraft:armor_stand as_p ~1 ~-1 ~
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~-1 ~-1 ~ minecraft:air[] run summon minecraft:armor_stand as_p ~-1 ~-1 ~
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~ ~-1 ~1 minecraft:air[] run summon minecraft:armor_stand as_p ~ ~-1 ~1
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s if block ~ ~-1 ~-1 minecraft:air[] run summon minecraft:armor_stand as_p ~ ~-1 ~-1
#
execute as @e[type=armor_stand,name=as_a,scores={as_cost=2}] at @s as @e[tag=as_p1] at @s run tag @e[type=minecraft:armor_stand,name=as_p,y=~1,r=0.2,tag=!as_move,tag=!as_up] add as_down
execute as @e[type=armor_stand,name=as_a,scores={as_cost=2}] at @s as @e[tag=as_p1] at @s run tag @e[type=minecraft:armor_stand,name=as_p,y=~-1,r=0.2,tag=!as_move,tag=!as_down] add as_up
#
execute as @e[type=armor_stand,name=as_p] at @s run tag @e[x=~1,y=~,z=~,r=0.5,name=as_p,tag=!as_p6] add as_p6
execute as @e[type=armor_stand,name=as_p] at @s run tag @e[x=~-1,y=~,z=~,r=0.5,name=as_p,tag=!as_p6] add as_p6
execute as @e[type=armor_stand,name=as_p] at @s run tag @e[x=~,y=~,z=~1,r=0.5,name=as_p,tag=!as_p6] add as_p6
execute as @e[type=armor_stand,name=as_p] at @s run tag @e[x=~,y=~,z=~-1,r=0.5,name=as_p,tag=!as_p6] add as_p6
execute as @e[type=armor_stand,name=as_p] at @s run tag @e[x=~,y=~1,z=~,r=0.5,name=as_p,tag=!as_p6] add as_p6
execute as @e[type=armor_stand,name=as_p] at @s run tag @e[x=~,y=~-1,z=~,r=0.5,name=as_p,tag=!as_p6] add as_p6
tag @e[tag=as_p1] add as_p6
kill @e[type=armor_stand,name=as_p,tag=!as_p6]
#
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s run tag @e[type=minecraft:armor_stand,name=as_p,x=~1,y=~1,z=~1,dx=-2,dy=0.5,dz=-2,tag=!as_p7] add as_mdown
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s run tag @e[type=minecraft:armor_stand,name=as_p,x=~1,y=~-1,z=~1,dx=-2,dy=0.5,dz=-2,tag=!as_p7] add as_mup
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s run tag @e[type=minecraft:armor_stand,name=as_p,x=~1,y=~1,z=~1,dx=-2,dy=0.5,dz=-2] add as_p7
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s run tag @e[type=minecraft:armor_stand,name=as_p,x=~1,y=~-1,z=~1,dx=-2,dy=0.5,dz=-2] add as_p7
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s run tag @e[type=minecraft:armor_stand,name=as_p,y=~1,r=0.8] remove as_mdown
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s run tag @e[type=minecraft:armor_stand,name=as_p,y=~-1,r=0.8] remove as_mup
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s run tag @e[type=minecraft:armor_stand,name=as_p,y=~1,r=0.8,tag=!as_up] add as_down
execute as @e[type=armor_stand,name=as_a,scores={as_cost=3}] at @s as @e[tag=as_p1] at @s run tag @e[type=minecraft:armor_stand,name=as_p,y=~-1,r=0.8,tag=!as_down] add as_up
execute as @e[tag=as_p1] at @s run tag @e[type=minecraft:armor_stand,name=as_p] add as_move
execute as @e[tag=as_p1] at @s run tag @e[type=minecraft:armor_stand,name=as_p,tag=as_down] remove as_move
execute as @e[tag=as_p1] at @s run tag @e[type=minecraft:armor_stand,name=as_p,tag=as_up] remove as_move
execute as @e[name=as_p,tag=as_p4] at @s run kill @e[r=0.5,name=as_p,tag=!as_p4]
execute as @e[name=as_p,tag=as_p2] at @s run kill @e[r=0.5,name=as_p,tag=!as_p2]
execute as @e[name=as_a,tag=as_p] at @s run kill @e[r=0.5,name=as_p]

##代价计算
execute as @e[name=as_p,tag=!as_p2] at @s run tp @s[tag=!as_p4] ~~~ facing @e[tag=as_p1]
execute as @e[name=as_p,tag=!as_p2] at @s run scoreboard players operation @s[tag=!as_p4] as_fc = @e[tag=as_p1] as_fc
execute as @e[name=as_p,tag=!as_p2] at @s run scoreboard players add @s[tag=!as_p4] as_fc 1
execute as @e[name=as_p,tag=!as_p5] at @s run function position/pos_get
execute as @e[name=as_p,tag=!as_p5] at @s run tag @s add as_p5
execute as @e[name=as_p,tag=!as_p2] at @s run scoreboard players operation @s as_x = @s p_x
execute as @e[name=as_p,tag=!as_p2] at @s run scoreboard players operation @s as_x -= @e[type=armor_stand,name=as_b] p_x
execute as @e[name=as_p,tag=!as_p2] at @s run scoreboard players operation @s as_y = @s p_y
execute as @e[type=armor_stand,name=as_a,scores={as_cost=2..3}] at @s as @e[name=as_p,tag=!as_p2] at @s run scoreboard players operation @s as_y -= @e[type=armor_stand,name=as_b] p_y
execute as @e[name=as_p,tag=!as_p2] at @s run scoreboard players operation @s as_z = @s p_z
execute as @e[name=as_p,tag=!as_p2] at @s run scoreboard players operation @s as_z -= @e[type=armor_stand,name=as_b] p_z
execute as @e[name=as_p,tag=!as_p2] at @s run scoreboard players operation @s[scores={as_x=..-1}] as_x *= "a1" as_cost
execute as @e[name=as_p,tag=!as_p2] at @s run scoreboard players operation @s[scores={as_y=..-1}] as_y *= "a1" as_cost
execute as @e[name=as_p,tag=!as_p2] at @s run scoreboard players operation @s[scores={as_z=..-1}] as_z *= "a1" as_cost
execute as @e[type=armor_stand,name=as_a,scores={as_cost=2..3}] at @s as @e[name=as_p,tag=!as_p2] at @s run scoreboard players operation @s as_x += @s as_y
execute as @e[name=as_p,tag=!as_p2] at @s run scoreboard players operation @s as_x += @s as_z
execute as @e[name=as_p,tag=!as_p2] at @s run scoreboard players operation @s as_x += @s as_fc

##路径标记
execute as @e[type=armor_stand,name=as_b] at @s as @e[r=0.3,name=as_p,tag=!as_p2] at @s run tag @s add as_p3
execute as @e[name=as_p,tag=as_p3] at @s run scoreboard players set @e[name=as_p] as_cost 0
execute as @e[name=as_p,tag=as_p3] at @s run setblock ~ ~ ~ minecraft:gold_block
execute as @e[name=as_p,tag=as_p3,tag=as_move] at @s run tp @s ^^^1
execute as @e[name=as_p,tag=as_p3,tag=as_mdown] at @s run tp @s ~~-1~
execute as @e[name=as_p,tag=as_p3,tag=as_mup] at @s run tp @s ~~1~
execute as @e[name=as_p,tag=as_p3,tag=as_down] at @s run tp @s ~~-1~
execute as @e[name=as_p,tag=as_p3,tag=as_up] at @s run tp @s ~~1~
execute as @e[name=as_p,tag=as_p3] at @s run scoreboard players set @s as_cost 1
execute as @e[name=as_p,tag=as_p3] at @s run tag @e[r=0.5,name=as_p] add as_p3
execute as @e[name=as_p,tag=as_p3] at @s run tag @e[r=0.5,type=armor_stand,name=as_a] add as_p3
kill @e[name=as_p,tag=as_p3,scores={as_cost=1}]
execute as @e[type=armor_stand,name=as_a,tag=as_p3] at @s run setblock ~ ~ ~ minecraft:gold_block
#纠错
execute as @e[name=as_p] at @s if block ~1 ~ ~ minecraft:gold_block[] as @s at @s if block ~ ~ ~1 minecraft:gold_block[] as @s at @s if block ~ ~ ~-1 minecraft:gold_block[] as @s at @s run setblock ~ ~ ~ minecraft:gold_block
execute as @e[name=as_p] at @s if block ~1 ~ ~ minecraft:gold_block[] as @s at @s if block ~ ~ ~1 minecraft:gold_block[] as @s at @s if block ~ ~ ~-1 minecraft:gold_block[] as @s at @s run setblock ~1 ~ ~ minecraft:air
execute as @e[name=as_p] at @s if block ~-1 ~ ~ minecraft:gold_block[] as @s at @s if block ~ ~ ~1 minecraft:gold_block[] as @s at @s if block ~ ~ ~-1 minecraft:gold_block[] as @s at @s run setblock ~ ~ ~ minecraft:gold_block
execute as @e[name=as_p] at @s if block ~-1 ~ ~ minecraft:gold_block[] as @s at @s if block ~ ~ ~1 minecraft:gold_block[] as @s at @s if block ~ ~ ~-1 minecraft:gold_block[] as @s at @s run setblock ~-1 ~ ~ minecraft:air
execute as @e[name=as_p] at @s if block ~ ~ ~1 minecraft:gold_block[] as @s at @s if block ~1 ~ ~ minecraft:gold_block[] as @s at @s if block ~-1 ~ ~ minecraft:gold_block[] as @s at @s run setblock ~ ~ ~ minecraft:gold_block
execute as @e[name=as_p] at @s if block ~ ~ ~1 minecraft:gold_block[] as @s at @s if block ~1 ~ ~ minecraft:gold_block[] as @s at @s if block ~-1 ~ ~ minecraft:gold_block[] as @s at @s run setblock ~ ~ ~1 minecraft:air
execute as @e[name=as_p] at @s if block ~ ~ ~-1 minecraft:gold_block[] as @s at @s if block ~1 ~ ~ minecraft:gold_block[] as @s at @s if block ~-1 ~ ~ minecraft:gold_block[] as @s at @s run setblock ~ ~ ~ minecraft:gold_block
execute as @e[name=as_p] at @s if block ~ ~ ~-1 minecraft:gold_block[] as @s at @s if block ~1 ~ ~ minecraft:gold_block[] as @s at @s if block ~-1 ~ ~ minecraft:gold_block[] as @s at @s run setblock ~ ~ ~-1 minecraft:air
execute as @e[type=armor_stand,name=as_a,tag=as_p3] at @s run kill @e[name=as_p]
execute as @e[type=armor_stand,name=as_a,tag=as_p3] at @s run kill @e[name=as_b]
execute as @e[type=armor_stand,name=as_a,tag=as_p3] at @s run kill @s

##代价比较
execute as @e[name=as_p,tag=!as_p2] at @s run scoreboard players operation @s as_x *= "a1" as_cost
execute as @e[name=as_p,tag=!as_p2] at @s run scoreboard players add @s as_x 10000
execute as @e[tag=as_p1] at @s run scoreboard players operation @e[name=as_p,tag=!as_p2] as_cost > @e[name=as_p,tag=!as_p2] as_x
execute as @e[name=as_p,tag=!as_p2] at @s run scoreboard players operation @s as_cost -= @s as_x
execute as @e[name=as_p,tag=!as_p2] at @s run tag @e[tag=as_p1] remove as_p1
execute as @e[c=1,name=as_p,type=armor_stand,tag=!as_p2,scores={as_cost=0}] at @s run tag @s add as_p1
execute as @e[scores={as_cost=0},tag=as_p1] at @s run tag @s add as_p2
execute as @e[name=as_p,tag=!as_p2] at @s run tag @s add as_p4

#By Baby_2016