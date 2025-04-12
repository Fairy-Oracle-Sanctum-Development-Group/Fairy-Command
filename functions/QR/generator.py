#生成多项式
import re 

pattern = r"ɑ.*?x"
n ="ɑ0x22 + ɑ210x21 + ɑ171x20 + ɑ247x19 + ɑ242x18 + ɑ93x17 + ɑ230x16 + ɑ14x15 + ɑ109x14 + ɑ221x13 + ɑ53x12 + ɑ200x11 + ɑ74x10 + ɑ8x9 + ɑ172x8 + ɑ98x7 + ɑ80x6 + ɑ219x5 + ɑ134x4 + ɑ160x3 + ɑ105x2 + ɑ165x + ɑ231"

f = re.findall(pattern,n)

num = 0

file = open(f'C:/Users/ZHANGBaoHang/AppData/Local/Packages/Microsoft.MinecraftUWP_8wekyb3d8bbwe/LocalState/games/com.mojang/development_behavior_packs/Fairy-Command/functions/QR_new/generator_{len(f)}.mcfunction','w',encoding='utf-8') 
for i in f:
    file.write("execute as @e[name=qr_decode_place] at @s[scores={qr_encode_l=%s}] run scoreboard players set @e[c=1,r=2,name=qr_decode] GF_2 %s\n" % ( num+1 , i[1:-1] ))
    num += 1
print("over")
file.close()





