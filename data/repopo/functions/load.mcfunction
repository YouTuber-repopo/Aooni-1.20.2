#> repopo:load
# リロード処理

#define score_holder $NumberOfPlayers プレイヤーの数
#define score_holder $NumberOfHiroshi ひろしの数
#define score_holder $NumberOfDemon 青鬼の数

#define score_holder 参加人数: 表示用参加人数


# スコアボード設定
    scoreboard objectives add System dummy
    scoreboard objectives add LobbyInfo dummy {"text": "鯖情報", "color": "yellow", "bold": true}

    scoreboard objectives setdisplay sidebar LobbyInfo

    scoreboard players reset * System
    scoreboard players reset * LobbyInfo

    scoreboard players set $NumberOfHiroshi System 0
    scoreboard players set $NumberOfDemon System 0
    scoreboard players set $NumberOfPlayers System 0

    scoreboard players set 参加人数: LobbyInfo 0


# りろーでっど！
    say りろーでっど！
