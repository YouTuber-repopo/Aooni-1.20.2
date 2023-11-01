#> repopo:system/hiroshi_death
# ひろし死亡処理

# 演出
    tellraw @a [{"selector": "@s", "color": "blue"}, "は青鬼に食べられました"]


# ひろしエフェクト等設定
    function repopo:start/hiroshi_effects

# リスポーン地点処理
    execute if score @s Death > $RemainSetting System run spawnpoint @s 2 24 0

