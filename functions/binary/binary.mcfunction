#十进制转二、八、十六进制
##计分板
scoreboard objectives add bin_set dummy
scoreboard players add "mode" bin_set 0
#二进制-0 八进制-1 十六进制-2
scoreboard players add "num" bin_set 0
scoreboard objectives add bin_w dummy
scoreboard players set "w1" bin_w 2
scoreboard players set "w2" bin_w 8
scoreboard players set "w3" bin_w 16
scoreboard players set "w4" bin_w -1
scoreboard objectives add bin_p dummy

##转换
execute as @e[type=armor_stand,name=bin_set,tag=!bin_set] at @s run scoreboard players operation @s bin_w = "num" bin_set
execute as @e[type=armor_stand,name=bin_set,tag=!bin_set] at @s run scoreboard players operation @s bin_p = "num" bin_set
execute as @e[type=armor_stand,name=bin_set,tag=!bin_set] at @s run scoreboard players operation @s bin_set = "mode" bin_set
tag @e[type=armor_stand,name=bin_set,tag=!bin_set] add bin_set
execute as @e[name=bin_set,scores={bin_w=..-1}] at @s run tag @s add bin_fu
execute as @e[name=bin_set,scores={bin_w=..-1}] at @s run scoreboard players operation @s bin_w *= "w4" bin_w
execute as @e[name=bin_set,scores={bin_p=..-1}] at @s run scoreboard players operation @s bin_p *= "w4" bin_w
#二进制
execute as @e[name=bin_set,scores={bin_set=0}] at @s run scoreboard players operation @s bin_w %= "w1" bin_w
execute as @e[name=bin_set,scores={bin_set=0}] at @s run scoreboard players operation @s bin_p /= "w1" bin_w
#八进制
execute as @e[name=bin_set,scores={bin_set=1}] at @s run scoreboard players operation @s bin_w %= "w2" bin_w
execute as @e[name=bin_set,scores={bin_set=1}] at @s run scoreboard players operation @s bin_p /= "w2" bin_w
#十六进制
execute as @e[name=bin_set,scores={bin_set=2}] at @s run scoreboard players operation @s bin_w %= "w3" bin_w
execute as @e[name=bin_set,scores={bin_set=2}] at @s run scoreboard players operation @s bin_p /= "w3" bin_w
#
execute as @e[name=bin_set,scores={bin_w=0}] at @s run summon armor_stand "0"
execute as @e[name=bin_set,scores={bin_w=1}] at @s run summon armor_stand "1"
execute as @e[name=bin_set,scores={bin_w=2}] at @s run summon armor_stand "2"
execute as @e[name=bin_set,scores={bin_w=3}] at @s run summon armor_stand "3"
execute as @e[name=bin_set,scores={bin_w=4}] at @s run summon armor_stand "4"
execute as @e[name=bin_set,scores={bin_w=5}] at @s run summon armor_stand "5"
execute as @e[name=bin_set,scores={bin_w=6}] at @s run summon armor_stand "6"
execute as @e[name=bin_set,scores={bin_w=7}] at @s run summon armor_stand "7"
execute as @e[name=bin_set,scores={bin_w=8}] at @s run summon armor_stand "8"
execute as @e[name=bin_set,scores={bin_w=9}] at @s run summon armor_stand "9"
execute as @e[name=bin_set,scores={bin_w=10}] at @s run summon armor_stand "A"
execute as @e[name=bin_set,scores={bin_w=11}] at @s run summon armor_stand "B"
execute as @e[name=bin_set,scores={bin_w=12}] at @s run summon armor_stand "C"
execute as @e[name=bin_set,scores={bin_w=13}] at @s run summon armor_stand "D"
execute as @e[name=bin_set,scores={bin_w=14}] at @s run summon armor_stand "E"
execute as @e[name=bin_set,scores={bin_w=15}] at @s run summon armor_stand "F"
#
execute as @e[name=bin_set] at @s run tag @e[r=0.5,type=minecraft:armor_stand,tag=!bin_set] add bin_p
execute as @e[name=bin_set] at @s run scoreboard players add @e[tag=bin_p] bin_w 1
execute as @e[name=bin_set] at @s run scoreboard players operation @s bin_w = @s bin_p

##输出
execute as @e[name=bin_set,scores={bin_p=0}] at @s run scoreboard players operation @s bin_w = "num" bin_set
execute as @e[name=bin_set,scores={bin_p=0},tag=!bin_fu] at @s run tellraw @a {"rawtext":[{"score":{"name":"@s","objective":"bin_w"}},{"text":"D = "},{"selector":"@e[tag=bin_p,scores={bin_w=1}]"},{"selector":"@e[tag=bin_p,scores={bin_w=2}]"},{"selector":"@e[tag=bin_p,scores={bin_w=3}]"},{"selector":"@e[tag=bin_p,scores={bin_w=4}]"},{"selector":"@e[tag=bin_p,scores={bin_w=5}]"},{"selector":"@e[tag=bin_p,scores={bin_w=6}]"},{"selector":"@e[tag=bin_p,scores={bin_w=7}]"},{"selector":"@e[tag=bin_p,scores={bin_w=8}]"},{"selector":"@e[tag=bin_p,scores={bin_w=9}]"},{"selector":"@e[tag=bin_p,scores={bin_w=10}]"},{"selector":"@e[tag=bin_p,scores={bin_w=11}]"},{"selector":"@e[tag=bin_p,scores={bin_w=12}]"},{"selector":"@e[tag=bin_p,scores={bin_w=13}]"},{"selector":"@e[tag=bin_p,scores={bin_w=14}]"},{"selector":"@e[tag=bin_p,scores={bin_w=15}]"},{"selector":"@e[tag=bin_p,scores={bin_w=16}]"},{"selector":"@e[tag=bin_p,scores={bin_w=17}]"},{"selector":"@e[tag=bin_p,scores={bin_w=18}]"},{"selector":"@e[tag=bin_p,scores={bin_w=19}]"},{"selector":"@e[tag=bin_p,scores={bin_w=20}]"},{"selector":"@e[tag=bin_p,scores={bin_w=21}]"},{"selector":"@e[tag=bin_p,scores={bin_w=22}]"},{"selector":"@e[tag=bin_p,scores={bin_w=23}]"},{"selector":"@e[tag=bin_p,scores={bin_w=24}]"},{"selector":"@e[tag=bin_p,scores={bin_w=25}]"},{"selector":"@e[tag=bin_p,scores={bin_w=26}]"},{"selector":"@e[tag=bin_p,scores={bin_w=27}]"},{"selector":"@e[tag=bin_p,scores={bin_w=28}]"},{"selector":"@e[tag=bin_p,scores={bin_w=29}]"},{"selector":"@e[tag=bin_p,scores={bin_w=30}]"},{"selector":"@e[tag=bin_p,scores={bin_w=31}]"},{"selector":"@e[tag=bin_p,scores={bin_w=32}]"},{"selector":"@e[tag=bin_p,scores={bin_w=33}]"},{"selector":"@e[tag=bin_p,scores={bin_w=34}]"},{"selector":"@e[tag=bin_p,scores={bin_w=35}]"},{"selector":"@e[tag=bin_p,scores={bin_w=36}]"},{"selector":"@e[tag=bin_p,scores={bin_w=37}]"},{"selector":"@e[tag=bin_p,scores={bin_w=38}]"},{"selector":"@e[tag=bin_p,scores={bin_w=39}]"},{"selector":"@e[tag=bin_p,scores={bin_w=40}]"},{"selector":"@e[tag=bin_p,scores={bin_w=41}]"},{"selector":"@e[tag=bin_p,scores={bin_w=42}]"},{"selector":"@e[tag=bin_p,scores={bin_w=43}]"},{"selector":"@e[tag=bin_p,scores={bin_w=44}]"},{"selector":"@e[tag=bin_p,scores={bin_w=45}]"},{"selector":"@e[tag=bin_p,scores={bin_w=46}]"},{"selector":"@e[tag=bin_p,scores={bin_w=47}]"},{"selector":"@e[tag=bin_p,scores={bin_w=48}]"},{"selector":"@e[tag=bin_p,scores={bin_w=49}]"},{"selector":"@e[tag=bin_p,scores={bin_w=50}]"},{"translate":"%%4","with":{"rawtext":[{"selector":"@s[scores={bin_set=0}]"},{"selector":"@s[scores={bin_set=0..1}]"},{"selector":"@s[scores={bin_set=0..2}]"},{"text":"B"},{"text":"Q"},{"text":"H"}]}}]}
execute as @e[name=bin_set,scores={bin_p=0},tag=bin_fu] at @s run tellraw @a {"rawtext":[{"score":{"name":"@s","objective":"bin_w"}},{"text":"D = -"},{"selector":"@e[tag=bin_p,scores={bin_w=1}]"},{"selector":"@e[tag=bin_p,scores={bin_w=2}]"},{"selector":"@e[tag=bin_p,scores={bin_w=3}]"},{"selector":"@e[tag=bin_p,scores={bin_w=4}]"},{"selector":"@e[tag=bin_p,scores={bin_w=5}]"},{"selector":"@e[tag=bin_p,scores={bin_w=6}]"},{"selector":"@e[tag=bin_p,scores={bin_w=7}]"},{"selector":"@e[tag=bin_p,scores={bin_w=8}]"},{"selector":"@e[tag=bin_p,scores={bin_w=9}]"},{"selector":"@e[tag=bin_p,scores={bin_w=10}]"},{"selector":"@e[tag=bin_p,scores={bin_w=11}]"},{"selector":"@e[tag=bin_p,scores={bin_w=12}]"},{"selector":"@e[tag=bin_p,scores={bin_w=13}]"},{"selector":"@e[tag=bin_p,scores={bin_w=14}]"},{"selector":"@e[tag=bin_p,scores={bin_w=15}]"},{"selector":"@e[tag=bin_p,scores={bin_w=16}]"},{"selector":"@e[tag=bin_p,scores={bin_w=17}]"},{"selector":"@e[tag=bin_p,scores={bin_w=18}]"},{"selector":"@e[tag=bin_p,scores={bin_w=19}]"},{"selector":"@e[tag=bin_p,scores={bin_w=20}]"},{"selector":"@e[tag=bin_p,scores={bin_w=21}]"},{"selector":"@e[tag=bin_p,scores={bin_w=22}]"},{"selector":"@e[tag=bin_p,scores={bin_w=23}]"},{"selector":"@e[tag=bin_p,scores={bin_w=24}]"},{"selector":"@e[tag=bin_p,scores={bin_w=25}]"},{"selector":"@e[tag=bin_p,scores={bin_w=26}]"},{"selector":"@e[tag=bin_p,scores={bin_w=27}]"},{"selector":"@e[tag=bin_p,scores={bin_w=28}]"},{"selector":"@e[tag=bin_p,scores={bin_w=29}]"},{"selector":"@e[tag=bin_p,scores={bin_w=30}]"},{"selector":"@e[tag=bin_p,scores={bin_w=31}]"},{"selector":"@e[tag=bin_p,scores={bin_w=32}]"},{"selector":"@e[tag=bin_p,scores={bin_w=33}]"},{"selector":"@e[tag=bin_p,scores={bin_w=34}]"},{"selector":"@e[tag=bin_p,scores={bin_w=35}]"},{"selector":"@e[tag=bin_p,scores={bin_w=36}]"},{"selector":"@e[tag=bin_p,scores={bin_w=37}]"},{"selector":"@e[tag=bin_p,scores={bin_w=38}]"},{"selector":"@e[tag=bin_p,scores={bin_w=39}]"},{"selector":"@e[tag=bin_p,scores={bin_w=40}]"},{"selector":"@e[tag=bin_p,scores={bin_w=41}]"},{"selector":"@e[tag=bin_p,scores={bin_w=42}]"},{"selector":"@e[tag=bin_p,scores={bin_w=43}]"},{"selector":"@e[tag=bin_p,scores={bin_w=44}]"},{"selector":"@e[tag=bin_p,scores={bin_w=45}]"},{"selector":"@e[tag=bin_p,scores={bin_w=46}]"},{"selector":"@e[tag=bin_p,scores={bin_w=47}]"},{"selector":"@e[tag=bin_p,scores={bin_w=48}]"},{"selector":"@e[tag=bin_p,scores={bin_w=49}]"},{"selector":"@e[tag=bin_p,scores={bin_w=50}]"},{"translate":"%%4","with":{"rawtext":[{"selector":"@s[scores={bin_set=0}]"},{"selector":"@s[scores={bin_set=0..1}]"},{"selector":"@s[scores={bin_set=0..2}]"},{"text":"B"},{"text":"Q"},{"text":"H"}]}}]}
execute as @e[name=bin_set,scores={bin_p=0}] at @s run kill @e[tag=bin_p]
execute as @e[name=bin_set,scores={bin_p=0}] at @s run kill @s

#By Baby_2016
