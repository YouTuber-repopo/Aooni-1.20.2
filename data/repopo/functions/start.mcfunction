#> repopo:start
# ゲームスタート時起動処理


# 既にプレイ中ならエラー
    execute if score $IsPlaying System matches 1 run function repopo:system/error_template {"error": '"既にプレイ中です。"'}
    execute if score $IsPlaying System matches 1 run return 1

# プレイ中に設定
    scoreboard players set $IsPlaying System 1


# エフェクト等設定
    execute as @a[team=Hiroshi] run function repopo:start/hiroshi_effects
    execute as @a[team=Guest] run function repopo:start/guest_effects


# カウントダウンを開始
    scoreboard players operation $NumberOfCountDown System = $CountDownSetting System
    function repopo:start/countdown
