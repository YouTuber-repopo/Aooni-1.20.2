#> repopo:system/playing
# プレイ中のファンクション


# 時間処理
    scoreboard players remove $Time System 1


# ゲームオーバー処理
    execute if score $Time System = $CountDownSettingTick System run function repopo:game_over/count_down
    execute unless entity @a[team=Hiroshi] run function repopo:game_over


# 死亡処理
    execute as @a[scores={IsDeath=1}, team=Hiroshi] run function repopo:system/hiroshi_death
    scoreboard players set @a IsDeath 0


# 走行検知処理
    execute as @a[scores={IsRun=1}, tag=Inside] run tag @s add Run
    scoreboard players set @a IsRun 0


# エフェクト処理
    effect give @a[team=Hiroshi] weakness infinite 255 true


# 五階解放処理
    execute if block 36 42 -25 blue_wool run fill 37 44 -25 37 45 -24 air