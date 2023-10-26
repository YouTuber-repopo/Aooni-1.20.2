#> repopo:system/error_template
# エラー表示処理のテンプレート


#  エラーを表示
$tellraw @s {"text": $(error), "color": "red"}
# プレイサウンド
execute at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 1 1

