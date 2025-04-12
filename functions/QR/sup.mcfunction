execute as @e[name=qr_sup_b] at @s if block ~~~ minecraft:white_concrete [] at @e[name=qr_sup_a] run setblock ~~~ minecraft:white_concrete
execute as @e[name=qr_sup_b] at @s if block ~~~ minecraft:black_concrete [] at @e[name=qr_sup_a] run setblock ~~~ minecraft:black_concrete
execute as @e[name=qr_sup_b] at @s run setblock ~~~ minecraft:air

execute as @e[name=qr_sup_b] at @s run tp @s ~1~~
execute as @e[name=qr_sup_a] at @s run tp @s ~1~~

execute as @e[name=qr_sup_b] at @s run scoreboard players add @s qr_encode 1
execute as @e[name=qr_sup_a] at @s run scoreboard players add @s qr_encode 1

execute as @e[name=qr_sup_b,scores={qr_encode=56}] run tp @s ~1~1~
execute as @e[name=qr_sup_b,scores={qr_encode=120}] run tp @s ~1~2~
execute as @e[name=qr_sup_b,scores={qr_encode=184}] run tp @s ~1~3~
execute as @e[name=qr_sup_b,scores={qr_encode=248}] run tp @s ~1~4~
execute as @e[name=qr_sup_b,scores={qr_encode=312}] run tp @s ~1~5~
execute as @e[name=qr_sup_b,scores={qr_encode=376}] run tp @s ~1~6~
execute as @e[name=qr_sup_b,scores={qr_encode=440}] run tp @s ~1~7~
execute as @e[name=qr_sup_b,scores={qr_encode=504}] run tp @s ~1~8~
execute as @e[name=qr_sup_b,scores={qr_encode=568}] run tp @s ~1~9~
execute as @e[name=qr_sup_b,scores={qr_encode=632}] run tp @s ~1~10~
execute as @e[name=qr_sup_b,scores={qr_encode=696}] run tp @s ~1~11~
execute as @e[name=qr_sup_b,scores={qr_encode=760}] run tp @s ~1~12~
execute as @e[name=qr_sup_b,scores={qr_encode=824}] run tp @s ~1~13~
execute as @e[name=qr_sup_b,scores={qr_encode=888}] run tp @s ~1~14~
execute as @e[name=qr_sup_b,scores={qr_encode=952}] run tp @s ~1~15~
execute as @e[name=qr_sup_b,scores={qr_encode=1016}] run tp @s ~1~16~
execute as @e[name=qr_sup_b,scores={qr_encode=1080}] run tp @s ~1~17~
execute as @e[name=qr_sup_b,scores={qr_encode=1114}] run tp @s ~1~18~
execute as @e[name=qr_sup_b,scores={qr_encode=1208}] run tp @s ~1~19~
execute as @e[name=qr_sup_b,scores={qr_encode=1272}] run tp @s ~1~20~

execute as @e[name=qr_sup_a,scores={qr_encode=64}] run tp @s ~1~1~
execute as @e[name=qr_sup_a,scores={qr_encode=128}] run tp @s ~1~2~
execute as @e[name=qr_sup_a,scores={qr_encode=192}] run tp @s ~1~3~
execute as @e[name=qr_sup_a,scores={qr_encode=256}] run tp @s ~1~4~
execute as @e[name=qr_sup_a,scores={qr_encode=320}] run tp @s ~1~5~
execute as @e[name=qr_sup_a,scores={qr_encode=384}] run tp @s ~1~6~
execute as @e[name=qr_sup_a,scores={qr_encode=448}] run tp @s ~1~7~
execute as @e[name=qr_sup_a,scores={qr_encode=512}] run tp @s ~1~8~
execute as @e[name=qr_sup_a,scores={qr_encode=576}] run tp @s ~1~9~
execute as @e[name=qr_sup_a,scores={qr_encode=640}] run tp @s ~1~10~
execute as @e[name=qr_sup_a,scores={qr_encode=704}] run tp @s ~1~11~
execute as @e[name=qr_sup_a,scores={qr_encode=768}] run tp @s ~1~12~
execute as @e[name=qr_sup_a,scores={qr_encode=832}] run tp @s ~1~13~
execute as @e[name=qr_sup_a,scores={qr_encode=896}] run tp @s ~1~14~
execute as @e[name=qr_sup_a,scores={qr_encode=960}] run tp @s ~1~15~
execute as @e[name=qr_sup_a,scores={qr_encode=1024}] run tp @s ~1~16~
execute as @e[name=qr_sup_a,scores={qr_encode=1088}] run tp @s ~1~17~
execute as @e[name=qr_sup_a,scores={qr_encode=1152}] run tp @s ~1~18~
execute as @e[name=qr_sup_a,scores={qr_encode=1216}] run tp @s ~1~19~
execute as @e[name=qr_sup_a,scores={qr_encode=1280}] run tp @s ~1~20~

execute as @e[name=qr_sup_b] at @s if block ~~~ minecraft:air [] run kill @e[name=qr_sup_a]
execute as @e[name=qr_sup_b] at @s if block ~~~ minecraft:air [] run scoreboard players set @e[name=qr_main,scores={qr_prg=102}] qr_prg 8
execute as @e[name=qr_sup_b] at @s if block ~~~ minecraft:air [] run scoreboard players set @e[name=qr_main,scores={qr_prg=104}] qr_prg 15
execute as @e[name=qr_sup_b] at @s if block ~~~ minecraft:air [] run kill @s

#By Baby_2016