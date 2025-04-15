file1 = open(r"C:\Users\ZHANGBaoHang\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\Fairy-Command\functions\QR\tool\version_information.txt",'r',encoding='utf-8')
file2 = open(r"C:\Users\ZHANGBaoHang\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\Fairy-Command\functions\QR\tool\config_generator.mcfunction",'w',encoding='utf-8')

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

        file2.write("execute if score mode qr_uid matches %s run function QR/generator_%s\n" % ( num , int(version[2]) ))
        print(version)
        num += 1
    
    i += 1
    

file1.close()
file2.close()
