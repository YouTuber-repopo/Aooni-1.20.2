#> repopo:tick
# 常時実行処理


# 人数更新
    execute store result score $NumberOfHiroshi System run team list Hiroshi
    execute store result score $NumberOfDemon System run team list Demon

    scoreboard players operation $NumberOfPlayers System = $NumberOfHiroshi System
    scoreboard players operation $NumberOfPlayers System += $NumberOfDemon System
    
    scoreboard players operation 参加人数: LobbyInfo = $NumberOfPlayers System


# 青鬼空腹度更新
    effect give @a[team=Demon, nbt={foodLevel: 0}] saturation 1 5 true