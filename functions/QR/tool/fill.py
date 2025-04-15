file1 = open(r"C:\Users\ZHANGBaoHang\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\Fairy-Command\functions\QR\tool\version_information.txt",'r',encoding='utf-8')
file2 = open(r"C:\Users\ZHANGBaoHang\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\Fairy-Command\functions\QR\tool\fill.mcfunction",'w',encoding='utf-8')

i = 1
num = 1
s = ["(","+","="]
r = {30 : "~1~3~ ~56~3~", 18 : "~1~2~ ~24~2~", 20 : "~1~2~ ~40~2~", 24 : "~1~3~ ~8~3~", 26 : "~1~3~ ~24~3~", 22 : "~1~2~ ~56~2~", 28 : "~1~3~ ~40~3"}

while i <= 160:
    line = file1.readline()
    if "L" in line:
        version = line.split()
        version.pop()
        version.pop()
        version.pop()
        if version[-1] == '+':
            version.pop()
            version.pop()
        
            file2.write("execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches %s run fill %s minecraft:white_concrete [] replace minecraft:air []\n" % ( num , r[int(version[2])]))

            
        num += 1

        print(version)
    i += 1




file1.close()
file2.close()

