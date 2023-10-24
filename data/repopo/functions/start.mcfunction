#> repopo:start
# ゲームスタート時起動処理


# カウントダウンが0ならゲームスタート
    execute if score $NumberOfCountDown System matches 0 run function repopo:start/_
    execute if score $NumberOfCountDown System matches 0 run return 0

# カウントダウン
    title @a title [{"text": "-----", "color": "blue", "bold": true}, {"score": {"objective": "System", "name": "$NumberOfCountDown"}}, "-----"]
    execute as @a at @s run playsound block.anvil.land master @s ~ ~ ~ 1 1 1

    scoreboard players remove $NumberOfCountDown System 1
    schedule function repopo:start 1s