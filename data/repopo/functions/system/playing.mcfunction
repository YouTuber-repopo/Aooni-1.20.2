#> repopo:system/playing
# プレイ中のファンクション


# 時間処理
    scoreboard players remove $Time System 1
    execute if score $Time System matches 0 run function repopo:game_over


# 死亡処理
    execute as @a[scores={IsDeath=1}, team=Hiroshi] run function repopo:system/hiroshi_death
    scoreboard players set @a IsDeath 0


# エフェクト処理
    effect give @a[team=Hiroshi] weakness infinite 255 true
