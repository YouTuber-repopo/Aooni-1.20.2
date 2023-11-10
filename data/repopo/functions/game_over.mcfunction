#> repopo:game_over
# ゲームオーバー処理


# プレイ中ではなくする
    scoreboard players set $IsPlaying System 0


# ブロック関連
    setblock 67 24 -17 lapis_block

    setblock 14 23 19 lapis_block
    setblock 8 23 19 lapis_block
    setblock 2 23 19 lapis_block

    fill 18 23 -13 19 27 -13 air


# 時間設定
    scoreboard players set $Time System -1


# 演出
    title @a title {"text": "青鬼ごっこ", "color": "blue", "bold": true}
    title @a subtitle {"text": "終了", "color": "yellow"}

    execute as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1

    team join Hiroshi @a[tag=Escapee]
    tellraw @a "脱出者"
    tellraw @a {"selector": "@a[tag=Escapee]", "color": "yellow", "bold": true}

    tellraw @a "地下解放者"
    tellraw @a {"selector": "@a[tag=BFHero]", "color": "yellow", "bold": true}

    tellraw @a "五階解放者"
    tellraw @a {"selector": "@a[tag=5FHero]", "color": "yellow", "bold": true}


# 10秒後完全終了
    schedule function repopo:game_over/complete_end 10s
