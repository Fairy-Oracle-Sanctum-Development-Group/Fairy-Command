file1 = open(r"C:\Users\ZHANGBaoHang\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\Fairy-Command\functions\QR\tool\version_information.txt",'r',encoding='utf-8')
file2 = open(r"C:\Users\ZHANGBaoHang\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\Fairy-Command\functions\QR\tool\data.mcfunction",'w',encoding='utf-8')

i = 1
num = 1
s = ["(","+","="]

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
        
            file2.write("execute as @e[name=qr_main,scores={qr_prg=6}] if score mode qr_uid matches %s run scoreboard players add @s qr_encode %s\n" % ( num , int(version[1]) ))

            
        num += 1

        print(version)
    i += 1




file1.close()
file2.close()

