#> repopo:game_over
# ゲームオーバー処理


# プレイ中ではなくする
    scoreboard players set $IsPlaying System 0


# 演出
    title @a title [{"text": "青", "color": "blue"}, "鬼ごっこ"]
    title @a subtitle "終了"

    execute as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1
