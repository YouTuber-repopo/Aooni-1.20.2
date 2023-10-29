#> repopo:start/generate_chest
# チェスト生成


# チェスト生成
    execute positioned 68 18 -65 run function repopo:start/generate_chest_template
    execute positioned 42 20 -51 run function repopo:start/generate_chest_template
    execute positioned 51 18 -38 run function repopo:start/generate_chest_template
    execute positioned 1 17 -55 run function repopo:start/generate_chest_template
    execute positioned -27 16 -9 run function repopo:start/generate_chest_template

    execute positioned 67 22 -87 run function repopo:start/generate_chest_template
    execute positioned 62 26 -70 run function repopo:start/generate_chest_template
    execute positioned 79 24 -4 run function repopo:start/generate_chest_template
    execute positioned 98 24 2 run function repopo:start/generate_chest_template
    execute positioned 69 24 17 run function repopo:start/generate_chest_template
    execute positioned 51 23 -15 run function repopo:start/generate_chest_template

    execute positioned 69 30 -41 run function repopo:start/generate_chest_template
    execute positioned 42 30 -48 run function repopo:start/generate_chest_template
    execute positioned 70 30 -22 run function repopo:start/generate_chest_template
    execute positioned 55 29 -5 run function repopo:start/generate_chest_template
    execute positioned 24 30 -10 run function repopo:start/generate_chest_template

    execute positioned 51 35 -40 run function repopo:start/generate_chest_template

    execute positioned 44 42 -21 run function repopo:start/generate_chest_template

    kill @e[type=item]


# 演出
    tellraw @s {"text": "チェストを生成しました。", "bold": true, "color": "gold"}
    execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2 1