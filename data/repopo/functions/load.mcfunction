#> repopo:load
# リロード処理

#define score_holder #20 20

#define score_holder $CountDownSetting ゲーム終了カウントダウンの設定
#define score_holder $CountDownSettingTick ゲーム終了カウントダウンの設定のtick
#define score_holder $NumberOfCountDown ゲーム終了カウントダウン

#define score_holder $IsPlaying プレイ中か否か

#define score_holder $RemainSetting 最大残機

#define score_holder $TimeLimit 制限時間設定
#define score_holder $Time 時間

#define score_holder $UndergroundKeyChestNumber 地下解放感圧版が入っているチェストの番号
#define score_holder $5FloorKeyChestNumber 五階解放羊毛が入っているチェストの番号

#define score_holder $NumberOfPlayers プレイヤーの数
#define score_holder $NumberOfHiroshi ひろしの数
#define score_holder $NumberOfDemon 青鬼の数

#define score_holder 参加人数: 表示用参加人数

#define team Hiroshi ひろしチーム
#define team Demon 青鬼チーム
#define team Guest 観客チーム

#alias vector lobby 2 24 0
#alias vector Entrance 20 24 -27
#alias vector HiroshiRespawnPoint 67 25 16
#alias vector DemonSpawnPoint 69 24 -17
#alias vector DemonSelectRoomHead -12 23 -12

#alias vector DemonStopBlock 67 24 -17
#alias vector AthleticLeftBlock 14 23 19
#alias vector AthleticCenterBlock 8 23 19
#alias vector AthleticRightBlock 2 23 19
#alias vector StartStopBlockStartPoint 18 23 -13
#alias vector StartStopBlockEndPoint 19 27 -13


# スコアボード設定
    scoreboard objectives add System dummy
    scoreboard objectives add LobbyInfo dummy {"text": "鯖情報", "color": "yellow", "bold": true}
    scoreboard objectives add Death deathCount
    scoreboard objectives add IsDeath deathCount
    scoreboard objectives add IsRun custom:sprint_one_cm
    scoreboard objectives add DemonKillCount playerKillCount

    scoreboard objectives setdisplay sidebar LobbyInfo

    scoreboard players reset * System
    scoreboard players reset * LobbyInfo
    scoreboard players reset * Death
    scoreboard players reset * IsDeath
    scoreboard players reset * IsRun
    scoreboard players reset * DemonKillCount

    scoreboard players set #20 System 20

    scoreboard players set $CountDownSetting System 10
    scoreboard players operation $CountDownSettingTick System = $CountDownSetting System
    scoreboard players operation $CountDownSettingTick System *= #20 System
    scoreboard players operation $NumberOfCountDown System = $CountDownSetting System

    scoreboard players set $IsPlaying System 0

    scoreboard players set $RemainSetting System 2

    scoreboard players set $TimeLimit System 18000
    scoreboard players operation $Time System = $TimeLimit System
    
    scoreboard players set $UndergroundKeyChestNumber System 0
    scoreboard players set $5FloorKeyChestNumber System 0

    scoreboard players set $NumberOfHiroshi System 0
    scoreboard players set $NumberOfDemon System 0
    scoreboard players set $NumberOfPlayers System 0

    scoreboard players set 参加人数: LobbyInfo 0

    scoreboard players set @a Death 0
    scoreboard players set @a IsDeath 0


# チーム設定
    team add Hiroshi "ひろし"
    team add Demon "青鬼"
    team add Guest "観客"

    team empty Hiroshi
    team empty Demon
    team empty Guest

    team modify Hiroshi deathMessageVisibility never
    team modify Hiroshi nametagVisibility never

    team modify Demon color blue
    team modify Demon deathMessageVisibility never
    team modify Demon nametagVisibility never

    team modify Guest color gray
    team modify Guest nametagVisibility hideForOtherTeams


# ゲームルール設定
    gamerule sendCommandFeedback false
    gamerule keepInventory true
    gamerule showDeathMessages true

    spawnpoint @a 2 24 0


# ブロック設置
    setblock 67 24 -17 lapis_block

    setblock 14 23 19 lapis_block
    setblock 8 23 19 lapis_block
    setblock 2 23 19 lapis_block

    fill 18 23 -13 19 27 -13 air


# リセット
    effect clear @a
    

# りろーでっど！
    say りろーでっど！
