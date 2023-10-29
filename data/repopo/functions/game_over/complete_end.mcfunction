#> repopo:game_over/complete_end
# 数秒後に完全にゲームを終了する


# チームを空に
    team empty Hiroshi
    team empty Demon
    team empty Guest

# リセット
    effect clear @a
    clear @a
    effect give @s instant_health 1 124 true
    effect give @s saturation 1 124 true


# 全プレイヤーロビーTP
    tp @a 2 24 0
