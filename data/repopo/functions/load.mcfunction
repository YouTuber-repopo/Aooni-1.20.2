#> repopo:load
# リロード処理

#define score_holder $NumberOfPlayers プレイヤーの数
#define score_holder $NumberOfHiroshi ひろしの数
#define score_holder $NumberOfDemon 青鬼の数

#define score_holder 参加人数: 表示用参加人数

#define team Hiroshi ひろしチーム
#define team Demon 青鬼チーム
#define team Guest 観客チーム


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


# チーム設定
    team add Hiroshi "ひろし"
    team add Demon "青鬼"
    team add Guest "観客"

    team empty Hiroshi
    team empty Demon
    team empty Guest

    team modify Hiroshi deathMessageVisibility never
    team modify Hiroshi nametagVisibility never
    team modify Hiroshi suffix "[ひろし]"

    team modify Demon color blue
    team modify Demon deathMessageVisibility never
    team modify Demon nametagVisibility never
    team modify Demon suffix "[青鬼]"

    team modify Guest color gray
    team modify Guest nametagVisibility hideForOtherTeams
    team modify Guest suffix "[観客]"


# りろーでっど！
    say りろーでっど！
