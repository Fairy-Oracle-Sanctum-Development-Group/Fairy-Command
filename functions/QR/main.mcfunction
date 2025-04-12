function QR/QR
execute unless entity @e[name=qr_main] run setblock ~~2~ minecraft:air
#titleraw @a actionbar { "rawtext": [ { "score": {"name": "@e[name=qr_main]", "objective": "GF_1" } } ] }