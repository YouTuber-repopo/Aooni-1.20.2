#> repopo:start
# ゲームスタート処理

#alias vector B1Entrance 39 24 -62
#alias vector 5FEntrance 36 42 -25
#alias vector 5FBlueStopLeftBottom 37 44 -25
#alias vector 5FBlueStopRightTop 37 45 -24
#alias vector 5FWhiteStopTop 77 49 -25
#alias vector 5FWhiteStopBottom 77 48 -25

#define tag Escapee 脱出者
#define tag 5FHero 五階解放者
#define tag BFHero 地下解放者
#define tag Run 走っていたか
#define tag Inside 館の中か


# 既にプレイ中ならエラー
    execute if score $IsPlaying System matches 1 run function repopo:system/error_template {"error": '"既にプレイ中です。"'}
    execute if score $IsPlaying System matches 1 run return 1

# プレイ中に設定
    scoreboard players set $IsPlaying System 1


# エフェクト等設定
    advancement grant @a only repopo:root
    execute as @a[team=Hiroshi] run function repopo:start/hiroshi_effects
    execute as @a[team=Guest] run function repopo:start/guest_effects
    tag @a remove 5FHero
    tag @a remove BFHero
    tag @a remove Run
    tag @a add Inside

    scoreboard players reset @a IsRun
    scoreboard players reset @a DemonKillCount

    scoreboard players reset @a Death
    scoreboard players reset @a IsDeath


# チェスト生成
    function repopo:start/generate_chest

# ワールドリセット
    setblock 39 24 -62 air
    setblock 36 42 -25 air
    fill 37 44 -25 37 45 -24 blue_wool
    fill 77 49 -25 77 48 -25 white_wool


# カウントダウンを設定
    scoreboard players operation $NumberOfCountDown System = $CountDownSetting System


# ひろし玄関TP
    tp @a[team=Hiroshi] 20 24 -27

# ブロック関連
    setblock 14 23 19 air
    setblock 8 23 19 air
    setblock 2 23 19 air

    fill 18 23 -13 19 27 -13 glass


# 時間設定
    scoreboard players operation $Time System = $TimeLimit System


# 演出
    title @a title {"text": "青鬼ごっこ START", "color": "blue", "bold": true}
    execute as @a at @s run playsound entity.ender_dragon.ambient master @s ~ ~ ~ 1 1 1


# 5秒後青鬼開放
    schedule function repopo:start/demon_release 5s
