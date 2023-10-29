#> repopo:start
# ゲームスタート時起動処理


# 既にプレイ中ならエラー
    execute if score $IsPlaying System matches 1 run function repopo:system/error_template {"error": '"既にプレイ中です。"'}
    execute if score $IsPlaying System matches 1 run return 1

# プレイ中に設定
    scoreboard players set $IsPlaying System 1


# エフェクト等設定
    execute as @a[team=Hiroshi] run function repopo:start/hiroshi_effects


# チェスト生成
    execute positioned 68 18 -65 run function repopo:start/generate_chest
    execute positioned 42 20 -51 run function repopo:start/generate_chest
    execute positioned 51 18 -38 run function repopo:start/generate_chest
    execute positioned 1 17 -55 run function repopo:start/generate_chest
    execute positioned -27 16 -9 run function repopo:start/generate_chest

    execute positioned 67 22 -87 run function repopo:start/generate_chest
    execute positioned 62 26 -70 run function repopo:start/generate_chest
    execute positioned 79 24 -4 run function repopo:start/generate_chest
    execute positioned 98 24 2 run function repopo:start/generate_chest
    execute positioned 69 24 17 run function repopo:start/generate_chest
    execute positioned 51 23 -15 run function repopo:start/generate_chest

    execute positioned 69 30 -41 run function repopo:start/generate_chest
    execute positioned 42 30 -48 run function repopo:start/generate_chest
    execute positioned 70 30 -22 run function repopo:start/generate_chest
    execute positioned 55 29 -5 run function repopo:start/generate_chest
    execute positioned 24 30 -10 run function repopo:start/generate_chest

    execute positioned 51 35 -40 run function repopo:start/generate_chest

    execute positioned 44 42 -21 run function repopo:start/generate_chest

    kill @e[type=item]


# カウントダウンを開始
    scoreboard players operation $NumberOfCountDown System = $CountDownSetting System
    function repopo:start/countdown
