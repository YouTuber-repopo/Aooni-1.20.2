#> repopo:start/hiroshi_effects
# ゲームスタート時のひろしのエフェクト等


# リセット
    clear @s
    
    effect give @s instant_health 1 124 true
    effect give @s saturation 1 124 true

    tag @s remove Escapee


# 設定
    gamemode adventure

    effect give @s weakness infinite 255 true

    spawnpoint @s 67 25 16
