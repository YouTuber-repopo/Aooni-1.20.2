#> repopo:select_demon
# 青鬼抽選


# 青鬼を範囲内から選ぶ
    execute positioned -12 23 -12 run team join Demon @r[distance=..4, team=Hiroshi]

# 範囲内にいなければエラー
    execute unless entity @a[team=Demon] run function repopo:system/error_template {"error": '"抽選部屋にプレイヤーがいません"'}
    execute unless entity @a[team=Demon] run return 1


# 青鬼初期設定
    execute as @a[team=Demon] run function repopo:start/demon_effects


# 演出
    tellraw @a [{"text": "今回の青鬼は", "color": "blue"}, {"selector": "@a[team=Demon]"}, "さんです"]
    execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2 1
