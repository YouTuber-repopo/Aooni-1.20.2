#> repopo:start/demon_effects
# 選出時の青鬼のエフェクト等


# リセット
    clear @s
    
    effect give @s instant_health 1 124 true
    effect give @s saturation 1 124 true


# 設定
    gamemode adventure
    
    item replace entity @s armor.head with diamond_helmet
    item replace entity @s armor.chest with diamond_chestplate
    item replace entity @s armor.legs with diamond_leggings
    item replace entity @s armor.feet with diamond_boots

    effect give @s strength infinite 255 true
    effect give @s resistance infinite 255 true
    effect give @s hunger infinite 255 true

    tp 69.5 24 -16.5
