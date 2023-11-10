#> repopo:game_over/complete_end
# 数秒後に完全にゲームを終了する


# チームを空に
    team empty Hiroshi
    team empty Demon
    team empty Guest

# リセット
    effect clear @a
    clear @a
    tag @a remove Escapee
    tag @a remove 5FHero
    tag @a remove BFHero
    effect give @a instant_health 1 124 true
    effect give @a saturation 1 124 true
    spawnpoint @a 2 24 0


# 全プレイヤーロビーTP
    tp @a 2 24 0
