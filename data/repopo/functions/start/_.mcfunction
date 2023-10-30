#> repopo:start/_
# ゲームスタート時メインファンクション


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
