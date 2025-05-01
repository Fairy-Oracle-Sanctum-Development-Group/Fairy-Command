execute as @e[name=qr_main,scores={qr_prg=18}] as @e[name=qr_read] at @s unless entity @e[name=qr_read_sub] run summon minecraft:armor_stand qr_read_sub ~~~
#execute as @e[name=qr_main,scores={qr_prg=18}] as @e[name=qr_read] at @s run setblock ~~~1 iron_block

execute as @e[name=qr_main,scores={qr_prg=18}] as @e[name=qr_read_sub] at @s if block ~~~ minecraft:white_concrete [] at @e[name=qr_fill] run setblock ~~~ minecraft:white_concrete []
execute as @e[name=qr_main,scores={qr_prg=18}] as @e[name=qr_read_sub] at @s if block ~~~ minecraft:black_concrete [] at @e[name=qr_fill] run setblock ~~~ minecraft:black_concrete []

scoreboard players add @e[name=qr_read] qr_decode 0
scoreboard players add @e[name=qr_read_sub] qr_split 0
scoreboard players operation @e[name=qr_read_sub,scores={qr_split=0}] qr_split = @e[name=qr_read] qr_split
execute as @e[name=qr_read_sub] at @s run tp @s ~1~~
scoreboard players add @e[name=qr_read_sub] qr_encode 1
execute as @e[name=qr_read,scores={qr_decode=0}] as @e[name=qr_read_sub,scores={qr_encode=8}] at @s run tp @s ~-8~~2
execute as @e[name=qr_read,scores={qr_decode=1}] as @e[name=qr_read_sub,scores={qr_encode=8}] at @s run tp @s ~-8~~-2
execute as @e[name=qr_read_sub,scores={qr_encode=8}] at @s run scoreboard players add @s qr_split -1
execute as @e[name=qr_read_sub,scores={qr_encode=8}] at @s run scoreboard players set @s qr_encode 0
execute as @e[name=qr_read_sub,scores={qr_split=0}] as @e[name=qr_read] at @s run scoreboard players add @s qr_encode 1
execute as @e[name=qr_read_sub,scores={qr_split=0}] as @e[name=qr_read] at @s run tp @s ~8~~

execute as @e[name=qr_read_sub,scores={qr_split=0}] as @e[name=qr_read] run scoreboard players operation @s qr_encode_l = @s qr_encode
execute as @e[name=qr_read_sub,scores={qr_split=0}] as @e[name=qr_read] run scoreboard players operation @s qr_encode_l %= "8" NUM
execute as @e[name=qr_read_sub,scores={qr_split=0}] as @e[name=qr_read,scores={qr_encode=1..,qr_encode_l=0}] at @s run tp @s ~-64~1~
execute as @e[name=qr_read_sub,scores={qr_split=0}] run kill @s

execute as @e[name=qr_read,tag=qr_read_more] at @s if block ~~~ minecraft:air [] run kill @e[name=qr_read_sub]
execute as @e[name=qr_read,tag=qr_read_more] at @s if block ~~~ minecraft:air [] at @e[name=qr_readhigh_tag] run summon minecraft:armor_stand qr_read_sub ~~~
execute as @e[name=qr_read,tag=qr_read_more] at @s if block ~~~ minecraft:air [] run kill @e[name=qr_readhigh_tag]
execute as @e[name=qr_read,tag=qr_read_more] at @s if block ~~~ minecraft:air [] run setblock ~~~ minecraft:diamond_block
execute as @e[name=qr_read,tag=qr_read_more] at @s if block ~~~ minecraft:diamond_block [] at @e[name=qr_read_sub,scores={qr_split=2}] if block ~~~2 minecraft:air [] run tag @s remove qr_read_more
execute as @e[name=qr_read,tag=!qr_read_more] at @s if block ~~~ minecraft:diamond_block [] run setblock ~~~ minecraft:air
execute as @e[name=qr_read,tag=!qr_read_more] at @s if block ~~~ minecraft:air [] run kill @e[name=qr_read_sub]
execute as @e[name=qr_read,tag=!qr_read_more] at @s if block ~~~ minecraft:air [] run scoreboard players set @s qr_encode 0
execute as @e[name=qr_read,tag=!qr_read_more] at @s if block ~~~ minecraft:air [] run scoreboard players add @s qr_decode 1
execute as @e[name=qr_read,tag=!qr_read_more] at @s if block ~~~ minecraft:air [] at @e[name=qr_split_set] positioned ~1~~ run tp @s ~~~

#execute as @e[name=qr_read,scores={qr_decode=2}] run kill @s

#titleraw @a actionbar {"rawtext":[{"score":{"name":"@e[name=qr_read]","objective":"qr_encode"}},{ "text": "," },{"score":{"name":"@e[name=qr_read]","objective":"qr_decode"}}]}





