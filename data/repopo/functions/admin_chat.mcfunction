#> repopo:admin_chat
# 管理者チャット


# チャット
    tellraw @s {"text": "看板", "color": "green", "clickEvent": {"action": "run_command", "value": "/function repopo:item/sign"}}
    tellraw @s {"text": "青鬼抽選", "color": "blue", "clickEvent": {"action": "run_command", "value": "/function repopo:select_demon"}}
    tellraw @s {"text": "ゲーム開始", "color": "yellow", "bold": true, "clickEvent": {"action": "run_command", "value": "/function repopo:start"}}
    tellraw @s {"text": "ゲーム終了", "color": "red", "bold": true, "clickEvent": {"action": "run_command", "value": "/function repopo:game_over"}}
