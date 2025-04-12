#贝塞尔曲线
##计分板
scoreboard objectives add be_point dummy
scoreboard objectives add be_n dummy 
scoreboard objectives add be_t dummy
scoreboard objectives add be_n dummy
scoreboard players set "a1" be_n -1

##设置点
execute as @e[type=snowball] at @s run tag @p[r=2] add be_ls
execute as @a[tag=be_ls] at @s run kill @e[r=3,type=snowball]
execute as @a[tag=be_ls] at @s as @e[c=1,r=2,type=minecraft:armor_stand,tag=!be_point] at @s run tellraw @a[tag=be_ls] { "rawtext": [ { "text": "[bezier] set point success" } ] }
execute as @a[tag=be_ls] at @s as @e[c=1,r=2,type=minecraft:armor_stand,tag=!be_point] at @s run function position/pos_get
execute as @a[tag=be_ls] at @s run tag @e[c=1,r=2,type=minecraft:armor_stand,tag=!be_point] add be_point
execute as @a[tag=be_ls] at @s run scoreboard players add @e[tag=be_point] be_point 1
execute as @a[tag=be_ls] at @s as @e[tag=be_point,scores={be_point=2}] at @s run scoreboard players operation @s v_x = @s p_x
execute as @a[tag=be_ls] at @s as @e[tag=be_point,scores={be_point=2}] at @s run scoreboard players operation @s v_y = @s p_y
execute as @a[tag=be_ls] at @s as @e[tag=be_point,scores={be_point=2}] at @s run scoreboard players operation @s v_z = @s p_z
#向量计算
execute as @a[tag=be_ls] at @s as @e[tag=be_point,scores={be_point=2}] at @s run scoreboard players operation @s v_x -= @e[tag=be_point,scores={be_point=1}] p_x
execute as @a[tag=be_ls] at @s as @e[tag=be_point,scores={be_point=2}] at @s run scoreboard players operation @s v_y -= @e[tag=be_point,scores={be_point=1}] p_y
execute as @a[tag=be_ls] at @s as @e[tag=be_point,scores={be_point=2}] at @s run scoreboard players operation @s v_z -= @e[tag=be_point,scores={be_point=1}] p_z
execute as @a[tag=be_ls] at @s as @e[tag=be_point,scores={be_point=2}] at @s run scoreboard players operation @s v_x *= "a1" be_n
execute as @a[tag=be_ls] at @s as @e[tag=be_point,scores={be_point=2}] at @s run scoreboard players operation @s v_y *= "a1" be_n
execute as @a[tag=be_ls] at @s as @e[tag=be_point,scores={be_point=2}] at @s run scoreboard players operation @s v_z *= "a1" be_n
tag @a remove be_ls
#execute @e[tag=be_point] ~~~ tellraw @a[r=2] { "rawtext": [ { "text": "VX: " },{ "score": {"name": "@s", "objective": "v_x" } },{ "text": " VY: " },{ "score": {"name": "@s", "objective": "v_y" } },{ "text": " VZ: " },{ "score": {"name": "@s", "objective": "v_z" } } ] }

##判断点数量
execute as @e[type=fishing_hook] at @s run scoreboard players set @a[r=2,c=1] be_t -1
kill @e[type=fishing_hook] 
execute as @a[scores={be_t=-1}] at @s run scoreboard players set @s be_n 0
execute as @a[scores={be_t=-1}] at @s as @e[tag=be_point] at @s run scoreboard players add @a[scores={be_t=-1}] be_n 1
execute as @a[scores={be_t=-1,be_n=..2}] at @s run tellraw @s { "rawtext": [ { "text": "[bezier] at least 3 point are required" } ] }
execute as @a[scores={be_t=-1,be_n=4..}] at @s run tellraw @s { "rawtext": [ { "text": "[bezier] at least 3 point are required" } ] }
execute as @a[scores={be_t=-1,be_n=4..}] at @s run scoreboard players set @s be_t 0
execute as @a[scores={be_t=-1,be_n=..2}] at @s run scoreboard players set @s be_t 0
execute as @a[scores={be_t=-1,be_n=3}] at @s run tag @s add be_pr
execute as @a[scores={be_t=-1,be_n=3}] at @s run scoreboard players set @s be_t -2

##开始绘制
#1
execute as @p[scores={be_t=-2},tag=be_pr] at @s as @e[tag=be_point,scores={be_point=2..3}] at @s run summon minecraft:armor_stand be_t
execute as @p[scores={be_t=-2},tag=be_pr] at @s as @e[tag=be_point,scores={be_point=3}] at @s run scoreboard players set @e[r=0.5,name=be_t] be_t 1
execute as @p[scores={be_t=-2},tag=be_pr] at @s as @e[tag=be_point,scores={be_point=2}] at @s run scoreboard players set @e[r=0.5,name=be_t] be_t 2
execute as @p[scores={be_t=-2},tag=be_pr] at @s as @e[tag=be_point,scores={be_point=2..3}] at @s run scoreboard players operation @e[r=0.5,name=be_t] v_x = @s v_x
execute as @p[scores={be_t=-2},tag=be_pr] at @s as @e[tag=be_point,scores={be_point=2..3}] at @s run scoreboard players operation @e[r=0.5,name=be_t] v_y = @s v_y
execute as @p[scores={be_t=-2},tag=be_pr] at @s as @e[tag=be_point,scores={be_point=2..3}] at @s run scoreboard players operation @e[r=0.5,name=be_t] v_z = @s v_z
execute as @p[scores={be_t=-2},tag=be_pr] at @s run scoreboard players set @s be_t 1
#execute @e[name=be_t] ~~~ tellraw @a[r=2] { "rawtext": [ { "text": "VX: " },{ "score": {"name": "@s", "objective": "v_x" } },{ "text": " VY: " },{ "score": {"name": "@s", "objective": "v_y" } },{ "text": " VZ: " },{ "score": {"name": "@s", "objective": "v_z" } } ] }

#2
execute as @e[name=be_save] at @s run tp @s ~~~ 
execute as @p[scores={be_t=1..100},tag=be_pr] at @s as @e[name=be_save] at @s run effect @s invisibility 1 1 true 
execute as @p[scores={be_t=1..100},tag=be_pr] at @s as @e[name=be_t] at @s run function position/vec_return_float1
execute as @p[scores={be_t=1..100},tag=be_pr] at @s as @e[name=be_t] at @s run function position/pos_get_float1
execute as @p[scores={be_t=1..100},tag=be_pr] at @s as @e[name=be_t,scores={be_t=1}] at @s run summon minecraft:armor_stand be_t1
execute as @p[scores={be_t=1..100},tag=be_pr] at @s as @e[name=be_t,scores={be_t=2}] at @s run scoreboard players operation @e[name=be_t1] v_x = @s p_x
execute as @p[scores={be_t=1..100},tag=be_pr] at @s as @e[name=be_t,scores={be_t=2}] at @s run scoreboard players operation @e[name=be_t1] v_y = @s p_y
execute as @p[scores={be_t=1..100},tag=be_pr] at @s as @e[name=be_t,scores={be_t=2}] at @s run scoreboard players operation @e[name=be_t1] v_z = @s p_z
execute as @p[scores={be_t=1..100},tag=be_pr] at @s as @e[name=be_t,scores={be_t=2}] at @s run scoreboard players operation @e[name=be_t1] v_x -= @e[name=be_t,scores={be_t=1}] p_x
execute as @p[scores={be_t=1..100},tag=be_pr] at @s as @e[name=be_t,scores={be_t=2}] at @s run scoreboard players operation @e[name=be_t1] v_y -= @e[name=be_t,scores={be_t=1}] p_y
execute as @p[scores={be_t=1..100},tag=be_pr] at @s as @e[name=be_t,scores={be_t=2}] at @s run scoreboard players operation @e[name=be_t1] v_z -= @e[name=be_t,scores={be_t=1}] p_z
execute as @p[scores={be_t=1..100},tag=be_pr] at @s run scoreboard players operation @e[name=be_t1] v_x *= @s be_t
execute as @p[scores={be_t=1..100},tag=be_pr] at @s run scoreboard players operation @e[name=be_t1] v_y *= @s be_t
execute as @p[scores={be_t=1..100},tag=be_pr] at @s run scoreboard players operation @e[name=be_t1] v_z *= @s be_t
execute as @p[scores={be_t=1..100},tag=be_pr] at @s as @e[name=be_t,scores={be_t=1}] at @s as @e[name=be_t1] at @s run function position/vec_return_float2
execute as @p[scores={be_t=1..100},tag=be_pr] at @s as @e[name=be_t,scores={be_t=1}] at @s as @e[name=be_t1] at @s run summon minecraft:armor_stand be_save
execute as @p[scores={be_t=1..100},tag=be_pr] at @s as @e[name=be_t,scores={be_t=1}] at @s as @e[name=be_t1] at @s run kill @s
execute as @p[scores={be_t=1..100},tag=be_pr] at @s run scoreboard players add @s be_t 1
execute as @p[scores={be_t=101},tag=be_pr] at @s run tellraw @s { "rawtext": [ { "text": "[bezier] complete" } ] }
execute as @p[scores={be_t=101},tag=be_pr] at @s run tag @s add be_end
execute as @a[tag=be_end] at @s run tag @s remove be_pr
execute as @a[tag=be_end] at @s run scoreboard players set @s be_t 0
execute as @a[tag=be_end] at @s run scoreboard players set @s be_n 0
execute as @a[tag=be_end] at @s run kill @e[name=be_t]
execute as @a[tag=be_end] at @s run kill @e[tag=be_point]
execute as @a[tag=be_end] at @s run tag @s remove be_end

#By Baby_2016