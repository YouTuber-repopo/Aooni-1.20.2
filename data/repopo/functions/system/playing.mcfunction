#> repopo:system/playing
# プレイ中のファンクション


# 時間処理
    scoreboard players remove $Time System 1
    execute if score $Time System matches 0 run function repopo:game_over
