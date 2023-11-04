#> repopo:start
# ゲームスタート時起動処理

#alias vector B1Entrance 39 24 -62
#alias vector 5FEntrance 36 42 -25
#alias vector 5FBlueStopLeftBottom 37 44 -25
#alias vector 5FBlueStopRightTop 37 45 -24
#alias vector 5FWhiteStopTop 77 49 -25
#alias vector 5FWhiteStopBottom 77 48 -25


# 既にプレイ中ならエラー
    execute if score $IsPlaying System matches 1 run function repopo:system/error_template {"error": '"既にプレイ中です。"'}
    execute if score $IsPlaying System matches 1 run return 1

# プレイ中に設定
    scoreboard players set $IsPlaying System 1


# エフェクト等設定
    execute as @a[team=Hiroshi] run function repopo:start/hiroshi_effects
    execute as @a[team=Guest] run function repopo:start/guest_effects

# 残機リセット
    scoreboard players reset @a Death


# チェスト生成
    function repopo:start/generate_chest

# ワールドリセット
    setblock 39 24 -62 air
    setblock 36 42 -25 air
    fill 37 44 -25 37 45 -24 blue_wool
    fill 77 49 -25 77 48 -25 white_wool


# カウントダウンを開始
    scoreboard players operation $NumberOfCountDown System = $CountDownSetting System
    function repopo:start/countdown
