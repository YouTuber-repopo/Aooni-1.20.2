#> repopo:game_over
# ゲームオーバー処理


# プレイ中ではなくする
    scoreboard players set $IsPlaying System 0


# 演出
    title @a title {"text": "青鬼ごっこ", "color": "blue", "bold": true}
    title @a subtitle {"text": "終了", "color": "yellow"}

    execute as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1
