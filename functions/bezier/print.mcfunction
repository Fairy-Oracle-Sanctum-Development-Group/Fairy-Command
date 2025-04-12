#计分板
scoreboard objectives add t dummy
scoreboard objectives add layer dummy
scoreboard objectives add layer_re dummy
scoreboard objectives add precision dummy
scoreboard objectives add line_re dummy
scoreboard objectives add l_p dummy
scoreboard objectives add v_x dummy
scoreboard objectives add v_y dummy
scoreboard objectives add v_z dummy
scoreboard players add @a l_p 0
#判断是否有单独点
execute as @e[type=fishing_hook] at @s run scoreboard players set @p[r=2,scores={l_p=0}] l_p -1 
execute as @a[scores={l_p=-1}] at @s run kill @e[r=5,type=minecraft:fishing_hook]
execute as @e[tag=point,tag=!line] at @s run playsound note.harp @a[scores={l_p=-1}]
execute as @e[tag=point,tag=!line] at @s run tellraw @a[scores={l_p=-1}] { "rawtext": [ { "text": "there are still separate points" } ] } 
execute as @e[tag=point,tag=!line] at @s run scoreboard players set @a[scores={l_p=-1}] l_p 0
execute as @a[scores={l_p=-1,line=0..1}] at @s run tellraw @s { "rawtext": [ { "text": "At least 2 lines are required" } ] }
execute as @a[scores={l_p=-1,line=0..1}] at @s run playsound note.harp @s
execute as @a[scores={l_p=-1,line=0..1}] at @s run scoreboard players set @s l_p 0
#读取绘制方法
summon minecraft:armor_stand mode_read ~ ~1 ~
tag @e[r=2,type=minecraft:armor_stand,name=mode_read] add m_r
execute as @e[tag=m_r] at @s if block ~ ~ ~ minecraft:air[] run tag @a add m_p
execute as @a[tag=!m_p] at @s as @e[tag=m_r] at @s run structure save block ~ ~ ~ ~ ~ ~
execute as @a[tag=!m_p] at @s run kill @e[tag=m_r] 
kill @e[tag=m_r]
#1 实体生成 层级分配 
execute as @a[scores={l_p=-1}] at @s as @e[tag=line] at @s run scoreboard players operation @s line_re = @s line
execute as @a[scores={l_p=-1}] at @s as @e[tag=line] at @s run scoreboard players operation @s line_re *= "-1" p_x
execute as @a[scores={l_p=-1}] at @s as @e[tag=line] at @s run scoreboard players add @s line_re 1
execute as @a[scores={l_p=-1}] at @s as @e[tag=line] at @s run scoreboard players operation @s line_re += @a[scores={l_p=-1}] line
execute as @a[scores={l_p=-1}] at @s run scoreboard players set @s l_p 1
execute as @a[scores={l_p=-1}] at @s run scoreboard players set @s t 1
execute as @a[scores={l_p=1}] at @s run scoreboard objectives setdisplay sidebar line_re
execute as @a[scores={l_p=1}] at @s run scoreboard players add @e[tag=point] layer 1
execute as @a[scores={l_p=1}] at @s as @e[tag=line,scores={point=0,line_re=1..}] at @s run summon minecraft:armor_stand move_point ~ ~ ~
execute as @a[scores={l_p=1}] at @s as @e[tag=line,scores={point=0,line_re=1..}] at @s run scoreboard players operation @e[r=1,type=minecraft:armor_stand,name=move_point,tag=!point] line = @s line
execute as @a[scores={l_p=1}] at @s as @e[tag=line,scores={point=0,line_re=1..}] at @s as @e[r=1,type=minecraft:armor_stand,name=move_point,tag=!point] at @s run function position/pos_get
execute as @a[scores={l_p=1}] at @s as @e[tag=line,scores={point=0,line_re=1..}] at @s as @e[r=1,type=minecraft:armor_stand,name=move_point,tag=!point] at @s run function position/pos_get
execute as @a[scores={l_p=1}] at @s as @e[tag=line,scores={point=0,line_re=1..}] at @s run tag @e[r=1,type=minecraft:armor_stand,name=move_point] add point
execute as @a[scores={l_p=1}] at @s as @e[tag=line,scores={point=0,line_re=1..}] at @s run tag @e[r=1,type=minecraft:armor_stand,name=move_point] add point_m
execute as @a[scores={l_p=1}] at @s as @e[tag=line,scores={point=0,line_re=1..}] at @s run scoreboard players remove @s line_re 1
execute as @a[scores={l_p=1}] at @s run tag @s add l_p_n1
execute as @a[scores={l_p=1}] at @s as @e[tag=line,scores={point=0,line_re=1..}] at @s run tag @a[scores={l_p=1}] remove l_p_n1
#2 向量计算
execute as @a[tag=l_p_n1] at @s as @e[tag=line] at @s run scoreboard players operation @s line_re = @s line
execute as @a[tag=l_p_n1] at @s run scoreboard players add @e[tag=point] layer 1
scoreboard players set @a[tag=l_p_n1] l_p 2
tag @a[scores={l_p=2}] remove l_p_n1
execute as @a[scores={l_p=2}] at @s run scoreboard players remove @e[tag=line] line_re 1
execute as @a[scores={l_p=2}] at @s as @e[tag=line,scores={line_re=0,point=1}] at @s run scoreboard players operation @s v_x = @s p_x
execute as @a[scores={l_p=2}] at @s as @e[tag=line,scores={line_re=0,point=1}] at @s run scoreboard players operation @s v_y = @s p_y
execute as @a[scores={l_p=2}] at @s as @e[tag=line,scores={line_re=0,point=1}] at @s run scoreboard players operation @s v_z = @s p_z
execute as @a[scores={l_p=2}] at @s as @e[tag=line,scores={line_re=0,point=1}] at @s run scoreboard players operation @s v_x -= @e[tag=line,scores={line_re=0,point=0}] p_x
execute as @a[scores={l_p=2}] at @s as @e[tag=line,scores={line_re=0,point=1}] at @s run scoreboard players operation @s v_y -= @e[tag=line,scores={line_re=0,point=0}] p_y
execute as @a[scores={l_p=2}] at @s as @e[tag=line,scores={line_re=0,point=1}] at @s run scoreboard players operation @s v_z -= @e[tag=line,scores={line_re=0,point=0}] p_z
execute as @a[scores={l_p=2}] at @s as @e[tag=line,scores={line_re=0,point=0}] at @s run scoreboard players operation @s v_x = @e[tag=line,scores={line_re=0,point=1}] v_x
execute as @a[scores={l_p=2}] at @s as @e[tag=line,scores={line_re=0,point=0}] at @s run scoreboard players operation @s v_y = @e[tag=line,scores={line_re=0,point=1}] v_y
execute as @a[scores={l_p=2}] at @s as @e[tag=line,scores={line_re=0,point=0}] at @s run scoreboard players operation @s v_z = @e[tag=line,scores={line_re=0,point=1}] v_z
execute as @a[scores={l_p=2}] at @s as @e[tag=line,scores={line_re=0,point=0}] at @s run tellraw @a { "rawtext": [ { "text": "VX: " },{ "score": {"name": "@s", "objective": "v_x" } },{ "text": " VY: " },{ "score": {"name": "@s", "objective": "v_y" } },{ "text": " VZ: " },{ "score": {"name": "@s", "objective": "v_z" } } ] }
execute as @a[scores={l_p=2}] at @s run tag @s add l_p_n2
execute as @a[scores={l_p=2}] at @s as @e[tag=line,scores={point=0,line_re=1..}] at @s run tag @a[scores={l_p=2}] remove l_p_n2
#3 归位 绘制
execute as @a[tag=l_p_n2] at @s as @e[tag=point_m] at @s run scoreboard players operation @s layer_re = @s layer
execute as @a[tag=l_p_n2] at @s run scoreboard players operation @e[tag=point_m] layer_re *= "-1" p_x
execute as @a[tag=l_p_n2] at @s run scoreboard players add @e[tag=point_m] layer_re 1
execute as @a[tag=l_p_n2] at @s run scoreboard players operation @e[tag=point_m] layer_re += @s line
execute as @a[tag=l_p_n2] at @s run scoreboard objectives setdisplay sidebar layer_re
scoreboard players set @a[tag=l_p_n2] l_p 3
tag @a[scores={l_p=3}] remove l_p_n2
execute as @a[scores={l_p=3}] at @s run tag @s remove l_p_n3
execute as @a[scores={l_p=3}] at @s run scoreboard players remove @e[tag=point_m] layer_re 1
execute as @a[scores={l_p=3}] at @s as @e[tag=point_m] at @s run scoreboard players operation @s line_re = @s line
execute as @a[scores={l_p=3}] at @s as @e[tag=point_m] at @s run scoreboard players set @a[scores={l_p=3}] l_p 4
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m] at @s run scoreboard players remove @s line_re 1
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run scoreboard players operation @s v_x = @e[c=1,r=1,tag=line] v_x
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run scoreboard players operation @s v_y = @e[c=1,r=1,tag=line] v_y
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run scoreboard players operation @s v_z = @e[c=1,r=1,tag=line] v_z

execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run scoreboard players operation @s v_x = @e[c=1,r=1,tag=point_m,scores={layer_re=0,line_re=-1}] v_x
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run scoreboard players operation @s v_y = @e[c=1,r=1,tag=point_m,scores={layer_re=0,line_re=-1}] v_y
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run scoreboard players operation @s v_z = @e[c=1,r=1,tag=point_m,scores={layer_re=0,line_re=-1}] v_z

execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=-1}] at @s run scoreboard players operation @e[tag=point_m,scores={layer_re=0,line_re=0}] v_x = @s v_x
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=-1}] at @s run scoreboard players operation @e[tag=point_m,scores={layer_re=0,line_re=0}] v_y = @s v_y
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=-1}] at @s run scoreboard players operation @e[tag=point_m,scores={layer_re=0,line_re=0}] v_z = @s v_z

execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run scoreboard players operation @s v_x *= @a[scores={l_p=3}] t
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run scoreboard players operation @s v_y *= @a[scores={l_p=3}] t
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run scoreboard players operation @s v_z *= @a[scores={l_p=3}] t
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run function position/vec_return_float1
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run function position/pos_get
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run scoreboard players operation @s v_x = @s p_x
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run scoreboard players operation @s v_y = @s p_y
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run scoreboard players operation @s v_z = @s p_z
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run scoreboard players operation @s v_x -= @e[tag=point_m,scores={layer_re=0,line_re=-1}] p_x
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run scoreboard players operation @s v_y -= @e[tag=point_m,scores={layer_re=0,line_re=-1}] p_y
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run scoreboard players operation @s v_z -= @e[tag=point_m,scores={layer_re=0,line_re=-1}] p_z
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=0}] at @s run tp @e[tag=point_m,scores={layer_re=1,line_re=0}] ~~~
execute as @a[scores={l_p=4}] at @s run tag @s add l_p_n4
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={line_re=1..}] at @s run tag @a[scores={l_p=4}] remove l_p_n4
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=1..}] at @s run tag @a[scores={l_p=4}] remove l_p_n4
scoreboard players set @a[tag=l_p_n4] l_p 5
execute as @a[scores={l_p=4}] at @s run tag @s add l_p_n3
execute as @a[scores={l_p=4}] at @s as @e[tag=point_m,scores={layer_re=0,line_re=1..}] at @s run tag @a[scores={l_p=4}] remove l_p_n3
tag @a[tag=l_p_n3] add l_p_n2
#t+1
tag @a[tag=l_p_n4] remove l_p_n4
scoreboard players add @a[scores={l_p=5}] t 1
execute as @a[scores={l_p=5}] at @s as @e[tag=point_m] at @s run function position/pos_return
execute as @a[scores={t=100}] at @s run tellraw @a { "rawtext": [ { "text": "Complete" } ] }
execute as @a[scores={t=100}] at @s run tag @s add reset



