tag @e[c=1,name=pn_pm,tag=!pn_h,tag=!pn_h_chose] add pn_h_chose
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @s pn_h = @s pn_x
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @s pn_h *= @e[tag=pn_p1] pn_gra_x
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p1] pn_h = @s pn_z
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p1] pn_h *= @e[tag=pn_p1] pn_gra_z
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p1] pn_h += @s pn_h
#
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @s pn_h = @s pn_x
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players remove @s pn_h 240
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @s pn_h *= @e[tag=pn_p2] pn_gra_x
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p2] pn_h = @s pn_z
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p2] pn_h *= @e[tag=pn_p2] pn_gra_z
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p2] pn_h += @s pn_h
#
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @s pn_h = @s pn_x
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players remove @s pn_h 240
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @s pn_h *= @e[tag=pn_p3] pn_gra_x
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p3] pn_h = @s pn_z
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players remove @e[tag=pn_p3] pn_h 240
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p3] pn_h *= @e[tag=pn_p3] pn_gra_z
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p3] pn_h += @s pn_h
#
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @s pn_h = @s pn_x
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @s pn_h *= @e[tag=pn_p4] pn_gra_x
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p4] pn_h = @s pn_z
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players remove @e[tag=pn_p4] pn_h 240
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p4] pn_h *= @e[tag=pn_p4] pn_gra_z
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p4] pn_h += @s pn_h

##加权
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @s pn_h = @s pn_x
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p2] pn_h *= @s pn_h
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p3] pn_h *= @s pn_h
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players set @s pn_h 240
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @s pn_h -= @s pn_x
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p1] pn_h *= @s pn_h
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p4] pn_h *= @s pn_h
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p1] pn_h += @e[tag=pn_p2] pn_h
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p4] pn_h += @e[tag=pn_p3] pn_h
#
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @s pn_h = @s pn_z
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p4] pn_h *= @s pn_z
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players set @s pn_h 240
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @s pn_h -= @s pn_z
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p1] pn_h *= @s pn_h
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @e[tag=pn_p1] pn_h += @e[tag=pn_p4] pn_h
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @s pn_h = @e[tag=pn_p1] pn_h
#execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run tellraw @a { "rawtext": [ { "score": {"name": "@s", "objective": "pn_h" } } ] }

#
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run scoreboard players operation @s pn_set = "mode" pn_set 
#

#地形拓展包
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run function random_terrain/PerlinNoise_normal/expand_2



#
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s as @s[scores={pn_x=230,pn_z=230}] at @s run tag @e[name=pn_set] add pn_set2
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s as @s[scores={pn_x=230,pn_z=230}] at @s run tag @e[name=pn_set] add pn_set3
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s as @s[scores={pn_x=230,pn_z=230}] at @s run tag @e[tag=pn_p1] remove pn_p1
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s as @s[scores={pn_x=230,pn_z=230}] at @s run tag @e[tag=pn_p2] remove pn_p2
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s as @s[scores={pn_x=230,pn_z=230}] at @s run tag @e[tag=pn_p3] remove pn_p3
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s as @s[scores={pn_x=230,pn_z=230}] at @s run tag @e[tag=pn_p4] remove pn_p4
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s as @s[scores={pn_x=230,pn_z=230}] at @s as @e[name=pn_set,scores={pn_gra_x=0,pn_z=0}] at @s run kill @e[name=pn_p]
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s as @s[scores={pn_x=230,pn_z=230}] at @s as @e[name=pn_set,scores={pn_gra_x=0,pn_z=0}] at @s run kill @s
#
execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run tag @s add pn_h

#execute as @e[c=1,name=pn_pm,tag=!pn_h,tag=pn_h_chose] at @s run tellraw @a { "rawtext": [ { "score": {"name": "@s", "objective": "pn_h" } }  ] }